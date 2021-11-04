# Building SuperSlicer on Microsoft Windows

The currently supported way of building SuperSlicer on Windows is with CMake and [MS Visual Studio 2019](https://visualstudio.microsoft.com/fr/vs).
CMake installer can be downloaded from [the official website](https://cmake.org/download/).~~

Building with [Visual Studio 2017 Community Edition](https://www.visualstudio.com/vs/older-downloads/). should work too.

### How to get the source code

You have to gitclone  the repository
```
git clone https://github.com/supermerill/SuperSlicer.git
```

and then you have to clone the profiles submodules

```
cd resources/profiles
git submodule update
```

### How to build

You have to build the dependancies (in ./deps/build)
```
cmake .. -G "Visual Studio 16 2019" -A x64
msbuild /m ALL_BUILD.vcxproj
```

and then build SuperSlicer (in ./build):
```
cmake .. -G "Visual Studio 16 2019" -A x64 -DCMAKE_PREFIX_PATH="PATH_TO_Slic3r\deps\build\destdir\usr\local"
msbuild /m /P:Configuration=Release INSTALL.vcxproj
```
You can also build it in visual studio, for that open the .sln.
Note that you need to have `libgmp-10.dll` and `libmpfr-4.dll` next to your built SuperSlicer. You can get them from any SuperSlicer release.

If you want to create the zipped release, you can follow this [script](https://github.com/supermerill/Slic3r/blob/master/.github/workflows/ccpp_win.yml).

# Old doc, not up-to-date:

### Building the dependencies package yourself

The dependencies package is built using CMake scripts inside the `deps` subdirectory of SuperSlicer sources.
(This is intentionally not interconnected with the CMake scripts in the rest of the sources.)

Open the preferred Visual Studio command line (64 or 32 bit variant, or just a cmd window) and `cd` into the directory with SuperSlicer sources.
Then `cd` into the `deps` directory and use these commands to build:

    mkdir build
    cd build
    cmake .. -G "Visual Studio 15 Win64" -DDESTDIR="C:\local\destdir-custom"
    msbuild /m ALL_BUILD.vcxproj
	
You can also use the Visual Studio GUI or other generators as mentioned below.

Note that if you're building a 32-bit variant, you will need to change the `"Visual Studio 15 Win64"` to just `"Visual Studio 15"`.

Conversely, if you're using Visual Studio version other than 2017, the version number will need to be changed accordingly (-G "Visual Studio 16 2019" -A "x64" for Visual Studio 2019 Community).

The `DESTDIR` option is the location where the bundle will be installed.
This may be customized. If you leave it empty, the `DESTDIR` will be placed inside the same `build` directory.

Warning: If the `build` directory is nested too deep inside other folders, various file paths during the build become too long and the build might fail due to file writing errors (\*). For this reason, it is recommended to place the `build` directory relatively close to the drive root.

Note that the build variant that you may choose using Visual Studio (i.e. _Release_ or _Debug_ etc.) when building the dependency package is **not relevant**.
The dependency build will by default build _both_ the _Release_ and _Debug_ variants regardless of what you choose in Visual Studio.
You can disable building of the debug variant by passing the

    -DDEP_DEBUG=OFF

option to CMake, this will only produce a _Release_ build.

Refer to the CMake scripts inside the `deps` directory to see which dependencies are built in what versions and how this is done.

* Specifically, the problem arises when building boost. Boost build tool appends all build options into paths of intermediate files, which are not handled correctly by either `b2.exe` or possibly `ninja` (?).


### Building SuperSlicer with Visual Studio

First obtain the SuperSlicer sources via either git or by extracting the source archive.

Then you will need to note down the so-called 'prefix path' to the dependencies, this is the location of the dependencies packages + `\usr\local` appended.

When ready, open the relevant Visual Studio command line and `cd` into the directory with SuperSlicer sources.
Use these commands to prepare Visual Studio solution file:

    mkdir build
    cd build
    cmake .. -G "Visual Studio 15 Win64" -DCMAKE_PREFIX_PATH="C:\local\destdir-custom\usr\local"

Note that the '-G "Visual Studio 15 Win64"' have to be the same as the one you sue for building the dependencies. So replace it the same way your replace it when you built the dependencies (if you did).

If `cmake` has finished without errors, go to the build directory and open the `Slic3r.sln` solution file in Visual Studio.
Before building, make sure you're building the right project (use one of those starting with `Slic3r_app_...`) and that you're building with the right configuration, i.e. _Release_ vs. _Debug_. When unsure, choose _Release_.
Note that you won't be able to build a _Debug_ variant against a _Release_-only dependencies package.

#### Installing using the `INSTALL` project

SuperSlicer can be run from the Visual Studio or from Visual Studio's build directory (`src\Release` or `src\Debug`), but for longer-term usage you might want to install somewhere using the `INSTALL` project.
By default, this installs into `C:\Program Files\SuperSlicer`.
To customize the install path, use the `-DCMAKE_INSTALL_PREFIX=<path of your choice>` when invoking `cmake`.

### Building from the command line

There are several options for building from the command line:

- [msbuild](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-reference?view=vs-2017&viewFallbackFrom=vs-2013)
- [Ninja](https://ninja-build.org/)
- [nmake](https://docs.microsoft.com/en-us/cpp/build/nmake-reference?view=vs-2017)

To build with msbuild, use the same CMake command as in previous paragraph and then build using

    msbuild /m /P:Configuration=Release ALL_BUILD.vcxproj

To build with Ninja or nmake, replace the `-G` option in the CMake call with `-G Ninja` or `-G "NMake Makefiles"` , respectively.
Then use either `ninja` or `nmake` to start the build.

To install, use `msbuild /P:Configuration=Release INSTALL.vcxproj` , `ninja install` , or `nmake install` .

### Building the dependencies package yourself

The dependencies package is built using CMake scripts inside the `deps` subdirectory of PrusaSlicer sources.
(This is intentionally not interconnected with the CMake scripts in the rest of the sources.)

Open the preferred Visual Studio command line (64 or 32 bit variant) and `cd` into the directory with PrusaSlicer sources.
Then `cd` into the `deps` directory and use these commands to build:

    mkdir build
    cd build
    cmake .. -G "Visual Studio 12 Win64" -DDESTDIR="C:\local\destdir-custom"
    msbuild /m ALL_BUILD.vcxproj

You can also use the Visual Studio GUI or other generators as mentioned above.

The `DESTDIR` option is the location where the bundle will be installed.
This may be customized. If you leave it empty, the `DESTDIR` will be placed inside the same `build` directory.

Warning: If the `build` directory is nested too deep inside other folders, various file paths during the build
become too long and the build might fail due to file writing errors (\*). For this reason, it is recommended to
place the `build` directory relatively close to the drive root.

Note that the build variant that you may choose using Visual Studio (i.e. _Release_ or _Debug_ etc.) when building the dependency package is **not relevant**.
The dependency build will by default build _both_ the _Release_ and _Debug_ variants regardless of what you choose in Visual Studio.
You can disable building of the debug variant by passing the

    -DDEP_DEBUG=OFF

option to CMake, this will only produce a _Release_ build.

Refer to the CMake scripts inside the `deps` directory to see which dependencies are built in what versions and how this is done.

\*) Specifically, the problem arises when building boost. Boost build tool appends all build options into paths of
intermediate files, which are not handled correctly by either `b2.exe` or possibly `ninja` (?).


# Noob guide (step by step)

- Install Visual Studio Community 2019 from [visualstudio.microsoft.com/vs/](https://visualstudio.microsoft.com/vs/)
- Select all workload options for C++ 
- Install git for Windows from [gitforwindows.org](https://gitforwindows.org/) 
  - download and run the exe accepting all defaults
- Download `PrusaSlicer-master.zip` from github
  - This example will use the directory c:\PrusaSlicer and unzipped to `c:\PrusaSlicer\PrusaSlicer-master\` so this will be the prefix for all the steps. Substitute your as required prefix.
- Go to the Windows Start Menu and Click on "Visual Studio 2019" folder, then select the ->"x64 Native Tools Command Prompt" to open a command window

      cd c:\PrusaSlicer\PrusaSlicer-master\deps
      mkdir build
      cd build
      cmake .. -G "Visual Studio 16 2019" -DDESTDIR="c:\PrusaSlicer\PrusaSlicer-master"
      msbuild /m ALL_BUILD.vcxproj // This took 13.5 minutes on the following machine: core I7-7700K @ 4.2Ghz with 32GB main memory and 20min on an average laptop
      cd c:\PrusaSlicer\PrusaSlicer-master\
      mkdir build
      cd build
      cmake .. -G "Visual Studio 16 2019" -DCMAKE_PREFIX_PATH="c:\PrusaSlicer\PrusaSlicer-master\usr\local"

- Open Visual Studio for c++ development (VS asks this the first time you start it)

`Open->Project/Solution` or `File->Open->Project/Solution` (depending on which dialog comes up first)

- Click on `c:\PrusaSlicer\PrusaSlicer-master\build\PrusaSlicer.sln`

`Debug->Start Debugging` or `Debug->Start Without debugging`

- PrusaSlicer should start. 
- You're up and running!