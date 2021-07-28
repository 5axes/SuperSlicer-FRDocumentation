## printer_technology
### Printer technology
Printer technology
 * Groupe : general
#### PrinterTechnology
 - FFF
 - SLA

## bed_shape
### Bed shape
 * Groupe : general
 * Mode : Avancé

## bed_custom_texture
### Bed custom texture
 * Groupe : general
 * Mode : Avancé

## bed_custom_model
### Bed custom model
 * Groupe : general
 * Mode : Avancé

## thumbnails
### Thumbnails size
Picture sizes to be stored into a .gcode and .sl1 files, in the following format: 'XxY, XxY, ...'
 * Mode : Expert

## thumbnails_color
### Color
 * Full label : Thumbnail color
 * Groupe : filament
This is the color that will be enforced on objects in the thumbnails.
 * Mode : Expert

## thumbnails_custom_color
### Enforce thumbnail color
Enforce a specific color on thumbnails. If not enforced, their color will be the one defined by the filament.
 * Mode : Expert

## thumbnails_with_bed
### Bed on thumbnail
Show the bed texture on the thumbnail picture.
 * Mode : Expert
* Valeur par défaut : true

## thumbnails_with_support
### Support on thumbnail
Show the supports (and pads) on the thumbnail picture.
 * Mode : Expert

## layer_height
### Base Layer height
 * Groupe : Perimètre
This setting controls the height (and thus the total number) of the slices/layers. Thinner layers give better accuracy but take more time to print.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0.2

## max_print_height
### Max print height
 * Groupe : general
Set this to the maximum height that can be reached by your extruder while printing.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 200.0

## slice_closing_radius
### Slice gap closing radius
 * Groupe : slicing
Cracks smaller than 2x gap closing radius are being filled during the triangle mesh slicing.    The gap closing operation may reduce the final print resolution, therefore it is advisable to keep the value reasonably low.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0.049

## print_host
### Hostname, IP or URL
 * Groupe : general
Slic3r can upload G-code files to a printer host. This field should contain  the hostname, IP address or URL of the printer host instance.  Print host behind HAProxy with basic auth enabled can be accessed by putting the user name and password into the URL  in the following format: https://username:password@your-octopi-address/
 * Mode : Avancé


## printhost_apikey
### API Key / Password
 * Groupe : general
Slic3r can upload G-code files to a printer host. This field should contain  the API Key or the password required for authentication.
 * Mode : Avancé
    
## printhost_port
### Printer
Name of the printer
 * Mode : Avancé

## printhost_cafile
### HTTPS CA File
 * Groupe : general
Custom CA certificate file can be specified for HTTPS OctoPrint connections, in crt/pem format.  If left blank, the default OS CA certificate repository is used.
 * Mode : Avancé

# Options used by physical printers
    
## printhost_user
### User
 * Mode : Avancé

    
## printhost_password
### Password
 * Mode : Avancé
    
## preset_name
### Printer preset name
Related printer preset name
 * Mode : Avancé

## printhost_authorization_type
### Authorization Type

#### AuthorizationType
 - API key
 - HTTP digest
 * Mode : Avancé


## allow_empty_layers
### Allow empty layers
 * Full label : Allow empty layers
 * Groupe : slicing
Do not prevent the gcode builder to trigger an exception if a full layer is empty and so the print will have to start from thin air afterward.
 * Mode : Expert


## avoid_crossing_perimeters
### Avoid crossing perimeters
 * Groupe : Perimètre
Optimize travel moves in order to minimize the crossing of perimeters. This is mostly useful with Bowden extruders which suffer from oozing. This feature slows down both the print and the G-code generation.
 * Mode : Expert


## avoid_crossing_not_first_layer
### Don't avoid crossing on 1st layer
 * Full label : Don't avoid crossing on 1st layer
 * Groupe : Perimètre
Do not use the 'Avoid crossing perimeters' on the first layer.
 * Mode : Expert
* Valeur par défaut : true

## avoid_crossing_perimeters_max_detour
### Avoid crossing perimeters - Max detour length
 * Groupe : Perimètre
The maximum detour length for avoid crossing perimeters.    If the detour is longer than this value, avoid crossing perimeters is not applied for this travel path.    Detour length could be specified either as an absolute value or as percentage (for example 50%) of a direct travel path.
 * unit : mm or % (zero to disable)
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0.

## bed_temperature
### Other layers
 * Groupe : filament
Bed temperature for layers after the first one.  Set this to zero to disable bed temperature control commands in the output.
 * unit : °C
 * Full label : Bed temperature
 * unit : °C
 * Valeur min :  0
 * Valeur max :  300
* Valeur par défaut :  0

## before_layer_gcode
### Before layer change G-code
 * Groupe : customgcode
This custom code is inserted at every layer change, right before the Z move.  Note that you can use placeholder variables for all Slic3r settings as well  as [layer_num] and [layer_z].
 * Mode : Expert


## between_objects_gcode
### Between objects G-code
 * Groupe : customgcode
This code is inserted between objects when using sequential printing. By default extruder and bed temperature are reset using non-wait command however if M104, M109, M140 or M190 are detected in this custom code, Slic3r will not add temperature commands. Note that you can use placeholder variables for all Slic3r settings, so you can put a 'M109 S[first_layer_temperature]' command wherever you want.
 * Mode : Expert


## bottom_solid_layers
    //TRN To be shown in Print Settings "Bottom solid layers
	### Bottom
 * Groupe : Perimètre
Number of solid layers to generate on bottom surfaces.
 * Full label : Bottom solid layers 
 * Valeur min :  0


## bottom_solid_min_thickness
    //TRN To be shown in Print Settings "Top solid layers
	### Bottom
 * Groupe : Perimètre
The number of bottom solid layers is increased above bottom_solid_layers if necessary to satisfy     				 "minimum thickness of bottom shell.
 * Full label : Minimum bottom shell thickness
 * unit : mm
 * Valeur min :  0
* Valeur par défaut : 0.

## bridge_acceleration
### Bridge
 * Full label : Bridge acceleration
 * Groupe : Vitesse
This is the acceleration your printer will use for bridges.        \nCan be a % of the default acceleration        \nSet zero to disable acceleration control for bridges.        \nNote that it won't be applied to overhangs, they still use the perimeter acceleration.
 * unit : mm/s² or %
 * Valeur min :  0
 * Mode : Expert


## bridge_angle
### Bridging
 * Full label : Bridging angle
 * Groupe : infill
Bridging angle override. If left to zero, the bridging angle will be calculated  automatically. Otherwise the provided angle will be used for all bridges.  Use 180° for zero angle.
 * unit : °
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0.

## bridge_fan_speed
### Bridges fan speed
 * Groupe : cooling
This fan speed is enforced during all bridges and overhangs. It won't slow down the fan if it's currently running at a higher speed.\nSet to 1 to disable the fan.\nSet to -1 to disable this override.\nCan only be overriden by disable_fan_first_layers.
 * unit : %
 * Valeur min :  -1
 * Valeur max :  100
 * Mode : Avancé
* Valeur par défaut :  100

## top_fan_speed
### Top fan speed
 * Groupe : cooling
This fan speed is enforced during all top fills.\nSet to 1 to disable the fan.\nSet to -1 to disable this override.\nCan only be overriden by disable_fan_first_layers.
 * unit : %
 * Valeur min :  -1
 * Valeur max :  100
 * Mode : Avancé
* Valeur par défaut : -1

## bridge_flow_ratio
### Bridge
 * Full label : Bridge flow ratio
 * unit : %
 * Groupe : width
This factor affects the amount of plastic for bridging.  You can decrease it slightly to pull the extrudates and prevent sagging,  although default settings are usually good and you should experiment  with cooling (use a fan) before tweaking this.
 * Valeur min :  1
 * Valeur max :  200
 * Mode : Avancé
* Valeur par défaut : 100

## over_bridge_flow_ratio
### Above the bridges
 * Full label : Above bridge flow ratio
 * unit : %
 * Groupe : width
Flow ratio to compensate for the gaps in a bridged top surface. Used for ironing infillpattern to prevent regions where the low-flow pass does not provide a smooth surface due to a lack of plastic. You can increase it slightly to pull the top layer at the correct height. Recommended maximum: 120%.
 * Valeur min :  1
 * Valeur max :  200
 * Mode : Avancé
* Valeur par défaut : 100

## bridge_overlap
### Bridge overlap
 * Full label : Bridge overlap
 * unit : %
 * Groupe : width
Amount of overlap between lines of the bridge. If want more space between line (or less), you can modify it. Default to 100%. A value of 50% will create two times less lines.
 * Valeur min :  50
 * Valeur max :  200
 * Mode : Expert
* Valeur par défaut : 100

## bridge_speed
### Bridges
 * Full label : Bridge speed
 * Groupe : Vitesse
Speed for printing bridges.
 * unit : mm/s
 * Aliases :  "bridge_feed_rate"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 60

## bridge_speed_internal
### Internal bridges
 * Full label : Internal bridge speed
 * Groupe : Vitesse
Speed for printing the bridges that support the top layer.\nCan be a % of the bridge speed.
 * unit : mm/s or %
 * Ratio over :  "bridge_speed"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 150,true
    
## brim_inside_holes
### Brim inside holes
 * Full label : Brim inside holes
 * Groupe : skirtBrim
Allow to create a brim over an island when it's inside a hole (or surrounded by an object).
 * Mode : Avancé


## brim_width
### Brim width
 * Groupe : skirtBrim
Horizontal width of the brim that will be printed around each object on the first layer.
 * unit : mm
 * Valeur min :  0
 * Mode : Simple
* Valeur par défaut : 0

## brim_width_interior
### Interior Brim width
 * Groupe : skirtBrim
Horizontal width of the brim that will be printed inside each object on the first layer.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0

## brim_ears
### Brim ears
 * Full label : Brim ears
 * Groupe : skirtBrim
Only draw brim over the sharp edges of the model.
 * Mode : Simple


## brim_ears_max_angle
### Max angle
 * Full label : Brim ear max angle
 * Groupe : skirtBrim
Maximum angle to let a brim ear appear. \nIf set to 0, no brim will be created. \nIf set to ~178, brim will be created on everything but strait sections.
 * unit : °
 * Valeur min :  0
 * Valeur max :  180
 * Mode : Avancé
* Valeur par défaut : 125

## brim_ears_detection_length
### Detection radius
 * Full label : Brim ear detection length
 * Groupe : skirtBrim
The geometry will be decimated before dectecting sharp angles. This parameter indicates the minimum length of the deviation for the decimation.  \n0 to deactivate
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 1

## brim_ears_pattern
### Pattern
 * Full label : Ear pattern
 * Groupe : infill
Pattern for the ear. The concentric is the default one.   The rectilinear has a perimeter around it, you can try it if the concentric has too many problems to stick to the build plate.
#### InfillPattern
 - Concentric
 - Rectilinear
 * Mode : Expert


## brim_offset
### Brim offset
 * Groupe : skirtBrim
Distance between the brim and the part. Should be kept at 0 unless you encounter great difficulties to separate them. It's subtracted to brim_width and brim_width_interior, so it has to be lower than them
 * unit : mm
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0

## chamber_temperature
### Chamber
 * Full label : Chamber temperature
 * Groupe : cooling
Chamber temperature. Note that this setting doesn't do anything, but you can access it in Start G-code, Tool change G-code and the other ones, like for other temperature settings.
 * unit : °C
 * Valeur min :  0
 * Valeur max :  300
 * Mode : Expert
* Valeur par défaut : 0

## clip_multipart_objects
### Clip multi-part objects
 * Groupe : slicing
When printing multi-material objects, this settings will make Slic3r  to clip the overlapping object parts one by the other  (2nd part will be clipped by the 1st, 3rd part will be clipped by the 1st and 2nd etc).
 * Mode : Expert
* Valeur par défaut : true

## colorprint_heights
### Colorprint height
 * Groupe : slicing
Heights at which a filament change is to occur. 

## compatible_printers
### Compatible printers
 * Mode : Avancé

## compatible_printers_condition
### Compatible printers condition
A boolean expression using the configuration values of an active printer profile.  If this expression evaluates to true, this profile is considered compatible  with the active printer profile.
 * Mode : Expert


## compatible_prints
### Compatible print profiles
 * Mode : Avancé

## compatible_prints_condition
### Compatible print profiles condition
A boolean expression using the configuration values of an active print profile.  If this expression evaluates to true, this profile is considered compatible  with the active print profile.
 * Mode : Expert


// The following value is to be stored into the project file (AMF, 3MF, Config ...)
// and it contains a sum of "compatible_printers_condition" values over the print and filament profiles.
## compatible_printers_condition_cummulative
## compatible_prints_condition_cummulative

## complete_objects
### Complete individual objects
 * Groupe : output
When printing multiple objects or copies, this feature will complete each object before moving onto next one (and starting it from its bottom layer). This feature is useful to avoid the risk of ruined prints. Slic3r should warn and prevent you from extruder collisions, but beware.
 * Mode : Avancé


## complete_objects_one_skirt
### Allow only one skirt loop
 * Groupe : output
When using 'Complete individual objects', the default behavior is to draw the skirt around each object. if you prefer to have only one skirt for the whole plater, use this option.
 * Mode : Avancé


## complete_objects_sort
### Object sort
 * Groupe : output
When printing multiple objects or copies on after another, this will help you to choose how it's ordered.\nObject will sort them by the order of the right panel.\nLowest Y will sort them by their lowest Y point. Useful for printers with a X-bar.\nLowest Z will sort them by their height, useful for delta printers.
 * Mode : Avancé
#### CompleteObjectSort
 - Right panel
 - lowest Y
 - lowest Z

//not used anymore, to remove !! @DEPRECATED
## cooling
### Enable auto cooling
 * Groupe : cooling
This flag enables the automatic cooling logic that adjusts print speed  and fan speed according to layer printing time.
 * Mode : Avancé
* Valeur par défaut : true

## cooling_tube_retraction
### Cooling tube position
 * Groupe : mmsetup
Distance of the center-point of the cooling tube from the extruder tip.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 91.5f

## cooling_tube_length
### Cooling tube length
 * Groupe : mmsetup
Length of the cooling tube to limit space for cooling moves inside it.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 5.f

## default_acceleration
### Default
 * Groupe : Vitesse
 * Full label : Default acceleration
This is the acceleration your printer will be reset to after  the role-specific acceleration values are used (perimeter/infill).  \nYou can set it as a % of the max of the X/Y machine acceleration limit. \nSet zero to prevent resetting acceleration at all.
 * unit : mm/s² or %
 * Valeur min :  0
 * Mode : Expert


## default_filament_profile
### Default filament profile
Default filament profile associated with the current printer profile.  On selection of the current printer profile, this filament profile will be activated.

## default_print_profile
### Default print profile
Default print profile associated with the current printer profile.  On selection of the current printer profile, this print profile will be activated.


## disable_fan_first_layers
### Disable fan for the first
 * Groupe : cooling
You can set this to a positive value to disable fan at all  during the first layers, so that it does not make adhesion worse.
 * unit : layers
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Expert
* Valeur par défaut :  3

## dont_support_bridges
### Don't support bridges
 * Groupe : support
Experimental option for preventing support material from being generated  under bridged areas.
 * Mode : Avancé
* Valeur par défaut : true

## duplicate_distance
### Distance between objects
 * Groupe : output
Distance used for the auto-arrange feature of the plater.
 * unit : mm
 * Aliases :  "multiply_distance"
 * Valeur min :  0
* Valeur par défaut : 6

## end_gcode
### End G-code
 * Groupe : customgcode
This end procedure is inserted at the end of the output file.  Note that you can use placeholder variables for all Slic3r settings.
 * Mode : Expert


## end_filament_gcode
### End G-code
 * Full label : Filament end G-code
 * Groupe : customgcode
This end procedure is inserted at the end of the output file, before the printer end gcode (and  before any toolchange from this filament in case of multimaterial printers).  Note that you can use placeholder variables for all Slic3r settings.  If you have multiple extruders, the gcode is processed in extruder order.
 * Mode : Expert
	
## ensure_vertical_shell_thickness
### Ensure vertical shell thickness
 * Groupe : Perimètre
Add solid infill near sloping surfaces to guarantee the vertical shell thickness  (top+bottom solid layers).
 * Mode : Avancé


## top_fill_pattern
### Top
 * Full label : Top Pattern
 * Groupe : infill
Fill pattern for top infill. This only affects the top visible layer, and not its adjacent solid shells.

#### InfillPattern
 - rectilinear
 - monotonicgapfill
 - monotonic
 - concentric
 - concentricgapfill
 - hilbertcurve
 - archimedeanchords
 - octagramspiral
 - sawtooth
 - smooth
 - smoothtriple
 - smoothhilbert
 - Rectilinear
 - Monotonic (filled)
 - Monotonic
 - Concentric
 - Concentric (filled)
 - Hilbert Curve
 - Archimedean Chords
 - Octagram Spiral
 - Sawtooth
 - Ironing


## bottom_fill_pattern
### Bottom
 * Full label : Bottom fill pattern
 * Groupe : infill
Fill pattern for bottom infill. This only affects the bottom visible layer, and not its adjacent solid shells.

#### InfillPattern
 - rectilinear
 - monotonicgapfill
 - monotonic
 - concentric
 - concentricgapfill
 - hilbertcurve
 - archimedeanchords
 - octagramspiral
 - smooth
 - Rectilinear
 - Monotonic (filled)
 - Monotonic
 - Concentric
 - Concentric (filled)
 - Hilbert Curve
 - Archimedean Chords
 - Octagram Spiral
 - Ironing
 * Mode : Avancé
#### InfillPattern>(ipMonotonic

## solid_fill_pattern
### Solid pattern
 * Groupe : infill
Fill pattern for solid (internal) infill. This only affects the solid not-visible layers. You should use rectilinear in most cases. You can try ironing for translucent material. Rectilinear (filled) replaces zig-zag patterns by a single big line & is more efficient for filling little spaces.
#### InfillPattern
 - smooth
 - rectilinear
 - rectilineargapfill
 - monotonic
 - concentric
 - concentricgapfill
 - hilbertcurve
 - archimedeanchords
 - octagramspiral
	 - Ironing
	 - Rectilinear
	 - Rectilinear (filled)
	 - Monotonic
	 - Concentric
	 - Concentric (filled)
	 - Hilbert Curve
	 - Archimedean Chords
	 - Octagram Spiral
 * Mode : Expert
#### InfillPattern>(ipRectilinearWGapFill

## enforce_full_fill_volume
### Enforce 100% fill volume
 * Groupe : infill
Experimental option which modifies (in solid infill) fill flow to have the exact amount of plastic inside the volume to fill (it generally changes the flow from -7% to +4%, depending on the size of the surface to fill and the overlap parameters, but it can go as high as +50% for infill in very small areas where rectilinear doesn't have good coverage). It has the advantage to remove the over-extrusion seen in thin infill areas, from the overlap ratio
 * Mode : Expert
* Valeur par défaut : true

## external_infill_margin
### Default
 * Full label : Default infill margin
 * Groupe : infill
This parameter grows the top/bottom/solid layers by the specified mm to anchor them into the part. Put 0 to deactivate it. Can be a % of the width of the perimeters.
 * unit : mm/%
 * Ratio over :  "perimeter_extrusion_width"
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 150

## bridged_infill_margin
### Bridged
 * Full label : Bridge margin
 * Groupe : infill
This parameter grows the bridged solid infill layers by the specified mm to anchor them into the part. Put 0 to deactivate it. Can be a % of the width of the external perimeter.
 * unit : mm/%
 * Ratio over :  "external_perimeter_extrusion_width"
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 200
 
## external_perimeter_extrusion_width
### External perimeters
 * Full label : External perimeters width
 * Groupe : width
Set this to a non-zero value to set a manual extrusion width for external perimeters. If left zero, default extrusion width will be used if set, otherwise 1.05 x nozzle diameter will be used. If expressed as percentage (for example 112.5%), it will be computed over nozzle diameter.\nYou can set either 'Spacing', or 'Width' the other will be calculated, using the perimeter 'Overlap' percentages and default layer height.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## external_perimeter_extrusion_spacing
### External perimeters
 * Full label : External perimeters spacing
 * Groupe : width
Like the External perimeters width, but this value is the distance between the edge and the 'frontier' to the next perimeter.        \nSetting the spacing will deactivate the width setting, and vice versa.        \nYou can set either 'Spacing', or 'Width' the other will be calculated, using the perimeter 'Overlap' percentages and default layer height.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## external_perimeter_cut_corners
### Cutting corners
 * Full label : Ext. peri. cut corners
 * Groupe : width
Activate this option to modify the flow to acknowledge that the nozzle is round and the corners will have a round shape, and so change the flow to realize that and avoid over-extrusion. 100% is activated, 0% is deactivated and 50% is half-activated.\nNote: At 100% this changes the flow by ~5% over a very small distance (~nozzle diameter), so it shouldn't be noticeable unless you have a very big nozzle and a very precise printer.\nIt's very experimental, please report about the usefulness. It may be removed if there is no use for it.
 * unit : %
 * Mode : Expert
* Valeur par défaut : 0

## external_perimeter_fan_speed
### External perimeter fan speed
When set to a non-zero value this fan speed is used only for external perimeters (visible ones).   \nSet to 1 to disable the fan.  \nSet to -1 to use the normal fan speed on external perimeters.  External perimeters can benefit from higher fan speed to improve surface finish,   while internal perimeters, infill, etc. benefit from lower fan speed to improve layer adhesion.
 * unit : %
 * Valeur min :  -1
 * Valeur max :  100
 * Mode : Avancé
* Valeur par défaut :  -1

## external_perimeter_overlap
### external perimeter overlap
 * Full label : Ext. peri. overlap
 * Groupe : width
This setting allows you to reduce the overlap between the perimeters and the external one, to reduce the impact of the perimeters' artifacts. 100% means that no gap is left, and 0% means that the external perimeter isn't contributing to the overlap with the 'inner' one.\nIt's very experimental, please report about the usefulness. It may be removed if there is no use for it.
 * unit : %
 * Valeur min :  0
 * Valeur max :  100
 * Mode : Expert
* Valeur par défaut : 100

## perimeter_overlap
### perimeter overlap
 * Full label : Perimeter overlap
 * Groupe : width
This setting allows you to reduce the overlap between the perimeters, to reduce the impact of the perimeters' artifacts. 100% means that no gap is left, and 0% means that perimeters are not touching each other anymore.\nIt's very experimental, please report about the usefulness. It may be removed if there is no use for it.
 * unit : %
 * Valeur min :  0
 * Valeur max :  100
 * Mode : Expert
* Valeur par défaut : 100

## perimeter_bonding
### Better bonding
 * Full label : Perimeter bonding
 * Groupe : Perimètre
This setting may slightly degrade the quality of your external perimeter, in exchange for a better bonding between perimeters.Use it if you have great difficulties with perimeter bonding, for example with high temperature filaments.\nThis percentage is the % of overlap between perimeters, a bit like perimeter_overlap and external_perimeter_overlap, but in reverse. You have to set perimeter_overlap and external_perimeter_overlap to 100%, or this setting has no effect. 0: no effect, 50%: half of the nozzle will be over an already extruded perimeter while extruding a new one, unless it's an external one).\nIt's very experimental, please report about the usefulness. It may be removed if there is no use for it.
 * unit : %
 * Valeur min :  0
 * Valeur max :  50
 * Mode : Expert
* Valeur par défaut : 0

## external_perimeter_speed
### External
 * Full label : External perimeters speed
 * Groupe : Vitesse
This separate setting will affect the speed of external perimeters (the visible ones).  If expressed as percentage (for example: 80%) it will be calculated  on the perimeters speed setting above. Set to zero for auto.
 * unit : mm/s or %
 * Ratio over :  "perimeter_speed"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 50 %

## external_perimeters_first
### first
 * Full label : External perimeters first
 * Groupe : Perimètre
Print contour perimeters from the outermost one to the innermost one instead of the default inverse order.
 * Mode : Expert


## external_perimeters_vase
### In vase mode (no seam)
 * Full label : ExternalPerimeter in vase mode
 * Groupe : Perimètre
Print contour perimeters in two circles, in a continuous way, like for a vase mode. It needs the external_perimeters_first parameter to work. \nDoesn't work for the first layer, as it may damage the bed overwise. \nNote that it will use min_layer_height from your hardware setting as the base height (it doesn't start at 0), so be sure to put here the lowest value your printer can handle. if it's not lower than two times the current layer height, it falls back to the normal algorithm, as there is not enough room to do two loops.
 * Mode : Expert


## external_perimeters_nothole
### Only for outer side
 * Full label : Ext peri first for outer side
 * Groupe : Perimètre
Only do the vase trick on the external side. Useful when the thickness is too low.
 * Mode : Expert
* Valeur par défaut : true

## external_perimeters_hole
### Only for inner side
 * Full label : ext peri first for inner side
 * Groupe : Perimètre
Only do the vase trick on the external side. Useful when you only want to remove seam from screw hole.
 * Mode : Expert
* Valeur par défaut : true


## perimeter_loop
### Perimeters loop
 * Full label : Perimeters loop
 * Groupe : Perimètre
Join the perimeters to create only one continuous extrusion without any z-hop. Long inside travel (from external to holes) are not extruded to give some space to the infill.
 * Mode : Avancé

    
## perimeter_loop_seam
### Seam position
 * Full label : Perimeter loop seam
 * Groupe : Perimètre
Position of perimeters starting points.
#### SeamPosition
 - nearest
 - rear
 - Nearest
 - Rear
 * Mode : Avancé

## extra_perimeters
### filling horizontal gaps on slopes
 * Full label : Extra perimeters (do nothing)
 * Groupe : Perimètre
Add more perimeters when needed for avoiding gaps in sloping walls. Slic3r keeps adding perimeters, until more than 70% of the loop immediately above is supported.\nIf you succeed in triggering the algorithm behind this setting, please send me a message. Personally, I think it's useless.
 * Mode : Expert


## extra_perimeters_overhangs
### On overhangs
 * Full label : Extra perimeters over overhangs
 * Groupe : Perimètre
Add more perimeters when needed for avoiding gaps in sloping walls. Slic3r keeps adding perimeters until all overhangs are filled.\n!! this is a very slow algorithm !!\nIf you use this setting, strongly consider also using overhangs_reverse.
 * Mode : Avancé


## extra_perimeters_odd_layers
### On odd layers
 * Full label : Extra perimeter on odd layers
 * Groupe : Perimètre
Add one perimeter every odd layer. With this, infill is taken into the sandwich and you may be able to reduce drastically the infill/perimeter overlap setting. 
 * Mode : Avancé


## only_one_perimeter_top
### Only one perimeter on Top surfaces
 * Groupe : Perimètre
Use only one perimeter on flat top surface, to give more space to the top infill pattern.
* Valeur par défaut : true

## only_one_perimeter_top_other_algo
### Only one peri - other algo
 * Groupe : Perimètre
If you have some problem with the 'Only one perimeter on Top surfaces' option, you can try to activate this on the problematic layer.


## extruder

### Extruder
 * Groupe : extruders
The extruder to use (unless more specific extruder settings are specified). This value overrides perimeter and infill extruders, but not the support extruders.
 * Valeur min :  0  // 0 = inherit defaults
 - default  // override label for item 0
 - 1
 - 2
 - 3
 - 4
 - 5
 - 6
 - 7
 - 8
 - 9

## extruder_clearance_height
### Height
 * Full label : Extruder clearance height
 * Groupe : output
Set this to the vertical distance between your nozzle tip and (usually) the X carriage rods.  In other words, this is the height of the clearance cylinder around your extruder,  and it represents the maximum depth the extruder can peek before colliding with  other printed objects. // TODO: "peek?" is this the correct word?
 * unit : mm
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 20

## extruder_clearance_radius
### Radius
 * Groupe : output
 * Full label : Extruder clearance radius
Set this to the clearance radius around your extruder.  If the extruder is not centered, choose the largest value for safety.  This setting is used to check for collisions and to display the graphical preview  in the plater.
 * unit : mm
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 20

## extruder_colour
### Extruder Color
 * Groupe : extruders
This is only used in the Slic3r interface as a visual help.

    // Empty string means no color assigned yet.
 * Mode : Avancé

## extruder_offset
### Extruder offset
 * Groupe : extruders
If your firmware doesn't handle the extruder displacement you need the G-code to take it into account. This option lets you specify the displacement of each extruder with respect to the first one. It expects positive coordinates (they will be subtracted from the XY coordinate).
 * unit : mm
 * Mode : Avancé

## extruder_temperature_offset
### Extruder temp offset
 * Groupe : extruders
This offset will be added to all extruder temperatures set in the filament settings.\nNote that you should set 'M104 S{first_layer_temperature[initial_extruder] + extruder_temperature_offset[initial_extruder]}'\ninstead of 'M104 S[first_layer_temperature]' in the start_gcode
 * unit : °C
 * Mode : Expert
* Valeur par défaut : 0

## extruder_fan_offset
### Extruder fan offset
 * Groupe : extruders
This offset wil be added to all fan values set in the filament properties. It won't make them go higher than 100% nor lower than 0%.
 * unit : %
 * Mode : Expert
* Valeur par défaut : 0


## extrusion_axis
### Extrusion axis
 * Groupe : extruders
Use this option to set the axis letter associated with your printer's extruder  (usually E but some printers use A).
E

## extrusion_multiplier
### Extrusion multiplier
 * Groupe : filament
This factor changes the amount of flow proportionally. You may need to tweak this setting to get nice surface finish and correct single wall widths. Usual values are between 0.9 and 1.1. If you think you need to change this more, check filament diameter and your firmware E steps.
 * Mode : Simple
 * Valeur max :  2
* Valeur par défaut : 1.

## print_extrusion_multiplier
### Extrusion multiplier
 * Groupe : filament
This factor changes the amount of flow proportionally. You may need to tweak this setting to get nice surface finish and correct single wall widths. Usual values are between 90% and 110%. If you think you need to change this more, check filament diameter and your firmware E steps. This print setting is multiplied against the extrusion_multiplier from the filament tab. Its only purpose is to offer the same functionality but on a per-object basis. // TODO: replace "against" with "with"?
 * unit : %
 * Mode : Simple
 * Valeur min :  2
* Valeur par défaut : 100

## extrusion_width
### Default extrusion width
 * Groupe : width
Set this to a non-zero value to allow a manual extrusion width. If left to zero, Slic3r derives extrusion widths from the nozzle diameter (see the tooltips for perimeter extrusion width, infill extrusion width etc). If expressed as percentage (for example: 105%), it will be computed over nozzle diameter.\nYou can set either 'Spacing', or 'Width' the other will be calculated, using the perimeter 'Overlap' percentages and default layer height.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## extrusion_spacing
### Default extrusion spacing
 * Groupe : width
Like Default extrusion width but spacing is the distance between two lines (as they overlap a bit, it's not the same).        \nYou can set either 'Spacing', or 'Width' the other will be calculated, using the perimeter 'Overlap' percentages and default layer height.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## fan_always_on
### Keep fan always on
 * Groupe : cooling
If this is enabled, fan will continuously run at base speed if no other setting overrides that speed.         Useful for PLA, harmful for ABS.
 * Mode : Simple

## fan_below_layer_time
### Enable fan if layer print time is below
 * Groupe : cooling
If layer print time is estimated below this number of seconds, fan will be enabled         and its speed will be calculated by interpolating the default and maximum speeds.        \nSet to 0 to disable.
 * unit : approximate seconds
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Expert
* Valeur par défaut :  60

## filament_colour
### Color
 * Full label : Filament color
 * Groupe : filament
This is only used in the Slic3r interface as a visual help.
 * Mode : Avancé

## filament_notes
### Filament notes
 * Groupe : notes
You can put your notes regarding the filament here.
 * Mode : Avancé

## filament_max_speed
### Max speed
 * Groupe : filament
Maximum speed allowed for this filament. Limits the maximum speed of a print to the minimum of the print speed and the filament speed. Set to zero for no limit.
 * unit : mm/s
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0.

## filament_max_volumetric_speed
### Max volumetric speed
 * Groupe : filament
Maximum volumetric speed allowed for this filament. Limits the maximum volumetric speed of a print to the minimum of print and filament volumetric speed. Set to zero for no limit.
 * unit : mm³/s
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0.

## filament_max_wipe_tower_speed
### Max speed on the wipe tower
This setting is used to set the maximum speed when extruding inside the wipe tower (use M220). In %, set 0 to disable and use the Filament type instead.\nIf disabled, these filament types will have a defaut value of:\n - PVA: 80% to 60%\n - SCAFF: 35%\n - FLEX: 35%\n - OTHERS: 100%\nNote that the wipe tower reset the speed at 100% for the unretract in any case." // TODO: "reset" -> "resets"?
\nIf using marlin, M220 B/R is used to save the speed override before the wipe tower print.
 * unit : %
 * Valeur min :  0
 * Valeur max :  200
 * Mode : Expert
* Valeur par défaut : 0

## filament_loading_speed
### Loading speed
Speed used for loading the filament on the wipe tower. 
 * unit : mm/s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 28.

    //skinnydip section starts
## filament_enable_toolchange_temp
### Toolchange temperature enabled
Determines whether toolchange temperatures will be applied
 * Mode : Avancé
* Valeur par défaut : false

## filament_use_fast_skinnydip
### Fast mode
Experimental: drops nozzle temperature during cooling moves instead of prior to extraction to reduce wait time.
 * Mode : Expert
* Valeur par défaut : false

## filament_enable_toolchange_part_fan
### Use part fan to cool hotend
Experimental setting.  May enable the hotend to cool down faster during toolchanges
 * Mode : Expert
* Valeur par défaut : false

## filament_toolchange_part_fan_speed
### Toolchange part fan speed
Experimental setting.  Fan speeds that are too high can clash with the hotend's PID routine.
 * unit : %
 * Valeur min :  0
 * Valeur max :  100
 * Mode : Expert
* Valeur par défaut :  50

## filament_use_skinnydip
### Enable Skinnydip string reduction
Skinnydip performs a secondary dip into the meltzone to burn off fine strings of filament
 * Mode : Avancé
* Valeur par défaut : false

## filament_melt_zone_pause
### Pause in melt zone
Stay in melt zone for this amount of time before extracting the filament.  Not usually necessary.
 * unit : milliseconds
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut :  0

## filament_cooling_zone_pause
### Pause before extraction 
Can be useful to avoid bondtech gears deforming hot tips, but not ordinarily needed
 * unit : milliseconds
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut :  0

## filament_dip_insertion_speed
### Speed to move into melt zone
usually not necessary to change this
 * unit : mm/sec
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 33.

## filament_dip_extraction_speed
### Speed to extract from melt zone
usually not necessary to change this
 * unit : mm/sec
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 70.

## filament_toolchange_temp
### Toolchange temperature
To further reduce stringing, it can be helpful to set a lower temperature just prior to extracting filament from the hotend.
 * unit : °C
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut :  200

## filament_skinnydip_distance
### Insertion distance
For stock extruders, usually 40-42mm.  For bondtech extruder upgrade, usually 30-32mm.  Start with a low value and gradually increase it until strings are gone.  If there are blobs on your wipe tower, your value is too high.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 31.
    //skinnydip section ends

## filament_loading_speed_start
### Loading speed at the start
Speed used at the very beginning of loading phase. 
 * unit : mm/s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 3.

## filament_unloading_speed
### Unloading speed
Speed used for unloading the filament on the wipe tower (does not affect   initial part of unloading just after ramming). 
 * unit : mm/s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 90.

## filament_unloading_speed_start
### Unloading speed at the start
Speed used for unloading the tip of the filament immediately after ramming. 
 * unit : mm/s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 100.

## filament_toolchange_delay
### Delay after unloading
Time to wait after the filament is unloaded.  May help to get reliable toolchanges with flexible materials  that may need more time to shrink to original dimensions. 
 * unit : s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0.

## filament_cooling_moves
### Number of cooling moves
Filament is cooled by being moved back and forth in the  cooling tubes. Specify desired number of these moves.
 * Valeur max :  0
 * Valeur max :  20
 * Mode : Expert
* Valeur par défaut :  4

## filament_cooling_initial_speed
### Speed of the first cooling move
Cooling moves are gradually accelerated, starting at this speed. 
 * unit : mm/s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 2.2

## filament_minimal_purge_on_wipe_tower
### Minimal purge on wipe tower
After a tool change, the exact position of the newly loaded filament inside    the nozzle may not be known, and the filament pressure is likely not yet stable.    Before purging the print head into an infill or a sacrificial object, Slic3r will always prime    this amount of material into the wipe tower to produce successive infill or sacrificial object extrusions reliably.
 * unit : mm³
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 15.

## filament_cooling_final_speed
### Speed of the last cooling move
Cooling moves are gradually accelerated towards this speed. 
 * unit : mm/s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 3.4

## filament_load_time
### Filament load time
Time for the printer firmware (or the Multi Material Unit 2.0) to load a new filament during a tool change (when executing the T code). This time is added to the total print time by the G-code time estimator.
 * unit : s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0.0

## filament_ramming_parameters
### Ramming parameters
This string is edited by RammingDialog and contains ramming specific parameters.
 * Mode : Expert


## filament_unload_time
### Filament unload time
Time for the printer firmware (or the Multi Material Unit 2.0) to unload a filament during a tool change (when executing the T code). This time is added to the total print time by the G-code time estimator.
 * unit : s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0.0

## filament_diameter
### Diameter
Enter your filament diameter here. Good precision is required, so use a caliper  and do multiple measurements along the filament, then compute the average.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 1.75

## filament_shrink
### Shrinkage
Enter the shrinkage percentage that the filament will get after cooling (94% if you measure 94mm instead of 100mm).   The part will be scaled in xy to compensate.   Only the filament used for the perimeter is taken into account.  \nBe sure to allow enough space between objects, as this compensation is done after the checks.
 * unit : %
 * Valeur min :  10
 * Mode : Expert
* Valeur par défaut : 100

## filament_density
### Density
 * Groupe : filament
Enter your filament density here. This is only for statistical information.  A decent way is to weigh a known length of filament and compute the ratio  of the length to volume. Better is to calculate the volume directly through displacement.
 * unit : g/cm³
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0.

## filament_type
### Filament type
 * Groupe : filament
The filament material type for use in custom G-codes.
 - PLA
 - PET
 - ABS
 - ASA
 - FLEX
 - HIPS
 - EDGE
 - NGEN
 - NYLON
 - PVA
 - PC
 - PP
 - PEI
 - PEEK
 - PEKK
 - POM
 - PSU
 - PVDF
 - SCAFF
 - other0
 - other1
 - other2
 - other3
 - other4
 - other5
 - other6
 - other7
 - other8
 - other9
 * Mode : Avancé
* Valeur par défaut : PLA
 
## filament_soluble
### Soluble material
 * Groupe : filament
Soluble material is most likely used for a soluble support.
 * Mode : Avancé
* Valeur par défaut : false

## filament_cost
### Cost
 * Full label : Filament cost
 * Groupe : filament
Enter your filament cost per kg here. This is only for statistical information.
 * unit : money/kg
 * Valeur min :  0
* Valeur par défaut : 0.

## filament_spool_weight
### Spool weight
 * Groupe : filament
Enter weight of the empty filament spool.    One may weigh a partially consumed filament spool before printing and one may compare the measured weight    with the calculated weight of the filament with the spool to find out whether the amount    of filament on the spool is sufficient to finish the print.
 * unit : g
 * Valeur min :  0
* Valeur par défaut : 0.

## filament_settings_id


## filament_vendor
* Valeur par défaut : Unknown


## fill_angle
### Fill
 * Full label : Fill angle
 * Groupe : infill
Default base angle for infill orientation. Cross-hatching will be applied to this.  Bridges will be infilled using the best direction Slic3r can detect, so this setting  does not affect them.
 * unit : °
 * Valeur min :  0
 * Valeur max :  360
 * Mode : Avancé
* Valeur par défaut : 45

## fill_angle_increment
### Fill
 * Full label : Fill angle increment
 * Groupe : infill
Add this angle each layer to the base angle for infill.   May be useful for art, or to be sure to hit every object's feature even with very low infill.   Still experimental, tell me what makes it useful, or the problems that arise using it.
 * unit : °
 * Valeur min :  0
 * Valeur max :  360
 * Mode : Expert
* Valeur par défaut : 0

## fill_density
### Fill density
 * Groupe : infill
Density of internal infill, expressed in the range 0% - 100%.
 * unit : %
 * Valeur min :  0
 * Valeur max :  100
 - 0
 - 4
 - 5.5
 - 7.5
 - 10
 - 13
 - 18
 - 23
 - 31
 - 42
 - 55
 - 75
 - 100
 - 0
 - 4
 - 5.5
 - 7.5
 - 10
 - 13
 - 18
 - 23
 - 31
 - 42
 - 55
 - 75
 - 100
* Valeur par défaut : 18

## fill_pattern
### Pattern
 * Full label : Fill pattern
 * Groupe : infill
Fill pattern for general low-density infill.
#### InfillPattern
 - rectilinear
 - monotonic
 - grid
 - triangles
 - stars
 - cubic
 - line
 - concentric
 - honeycomb
 - 3dhoneycomb
 - gyroid
 - hilbertcurve
 - archimedeanchords
 - octagramspiral
 - scatteredrectilinear 
 - adaptivecubic
 - supportcubic
 - Rectilinear
 - Monotonic
 - Grid
 - Triangles
 - Stars
 - Cubic
 - Line
 - Concentric
 - Honeycomb
 - 3D Honeycomb
 - Gyroid
 - Hilbert Curve
 - Archimedean Chords
 - Octagram Spiral
 - Scattered Rectilinear
 - Adaptive Cubic
 - Support Cubic
* Valeur par défaut : 

## fill_top_flow_ratio
### Top fill
 * Full label : Top fill flow ratio
 * unit : %
 * Groupe : width
You can increase this to over-extrude on the top layer if there is not enough plastic to make a good fill.
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 100

## first_layer_flow_ratio
### First layer
 * Full label : First layer flow ratio
 * unit : %
 * Groupe : width
You can increase this to over-extrude on the first layer if there is not enough plastic because your bed isn't levelled.  \nNote: DON'T USE THIS if your only problem is bed levelling, LEVEL YOUR BED!   Use this setting only as last resort after all calibrations failed.
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 100

## first_layer_size_compensation
### First layer
 * Full label : XY First layer compensation
 * Groupe : slicing
The first layer will be grown / shrunk in the XY plane by the configured value to compensate for the 1st layer squish aka an Elephant Foot effect. (should be negative = inwards)
 * unit : mm
 * Mode : Avancé
* Valeur par défaut : 0

## fill_smooth_width
### Width
 * Full label : Ironing width
 * Groupe : infill
This is the width of the ironing pass, in a % of the top infill extrusion width, should not be more than 50% (two times more lines, 50% overlap). It's not necessary to go below 25% (four times more lines, 75% overlap). \nIf you have problems with your ironing process, don't forget to look at the flow->above bridge flow, as this setting should be set to min 110% to let you have enough plastic in the top layer. A value too low will make your extruder eat the filament.
 * Ratio over :  "top_infill_extrusion_width"
 * Valeur min :  0
 * Mode : Expert
 * unit : mm/%
* Valeur par défaut : 50 %

## fill_smooth_distribution
### Distribution
 * Full label : Ironing flow distribution
 * Groupe : infill
This is the percentage of the flow that is used for the second ironing pass. Typical 10-20%. Should not be higher than 20%, unless you have your top extrusion width greatly superior to your nozzle width. A value too low and your extruder will eat the filament. A value too high and the first pass won't print well.
    //def->min = 0
    //def->max = 0.9
 * Mode : Expert
 * unit : %
* Valeur par défaut : 10

## first_layer_acceleration
### First layer
 * Full label : First layer acceleration
 * Groupe : Vitesse
This is the acceleration your printer will use for first layer.        \nCan be a % of the default acceleration        \nSet zero to disable acceleration control for first layer.
 * unit : mm/s² or %
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0

## first_layer_bed_temperature
### First layer
 * Full label : First layer bed temperature
 * Groupe : filament
Heated build plate temperature for the first layer. Set this to zero to disable  bed temperature control commands in the output.
 * unit : °C
 * Valeur max :  0
 * Valeur max :  300
* Valeur par défaut :  0

## first_layer_extrusion_width
### First layer
 * Full label : First layer width
 * Groupe : width
Set this to a non-zero value to set a manual extrusion width for first layer. You can use this to force fatter extrudates for better adhesion. If expressed as percentage (for example 140%) it will be computed over the nozzle diameter of the nozzle used for the type of extrusion. If set to zero, it will use the default extrusion width.
You can set either 'Spacing', or 'Width' the other will be calculated, using the perimeter 'Overlap' percentages and default layer height.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 140 %

## first_layer_extrusion_spacing
### First layer
 * Full label : First layer spacing
 * Groupe : width
Like First layer width but spacing is the distance between two lines (as they overlap a bit, it's not the same).
You can set either 'Spacing', or 'Width' the other will be calculated, using the perimeter 'Overlap' percentages and default layer height.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## first_layer_height
### First layer height
 * Groupe : Perimètre
When printing with very low layer heights, you might still want to print a thicker  bottom layer to improve adhesion and tolerance for non perfect build plates.  This can be expressed as an absolute value or as a percentage (for example: 75%)  over the default nozzle width.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 75 %

## first_layer_speed
### Default
 * Full label : Default first layer speed
 * Groupe : Vitesse
If expressed as absolute value in mm/s, this speed will be applied to all the print moves  but infill of the first layer, it can be overwritten by the 'default' (default depends of the type of the path)  speed if it's lower than that. If expressed as a percentage  it will scale the current speed. \nSet it at 100% to remove any first layer speed modification (with first_layer_infill_speed).
 * unit : mm/s or %
 * Ratio over :  "depends"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 30
    
## first_layer_infill_speed
### Infill
 * Full label : Infill first layer speed
 * Groupe : Vitesse
If expressed as absolute value in mm/s, this speed will be applied to infill moves  of the first layer, it can be overwritten by the 'default' (solid infill or infill if not bottom)  speed if it's lower than that. If expressed as a percentage  (for example: 40%) it will scale the current infill speed.
 * unit : mm/s or %
 * Ratio over :  "depends"
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 30
    
## first_layer_temperature
### First layer
 * Full label : First layer nozzle temperature
 * Groupe : filament
Extruder nozzle temperature for first layer. If you want to control temperature manually  during print, set this to zero to disable temperature control commands in the output file.
 * unit : °C
 * Valeur min :  0
 * Valeur max :  max_temp
* Valeur par défaut :  200

## full_fan_speed_layer
### Full fan speed at layer
Fan speed will be ramped up linearly from zero at layer 'disable_fan_first_layers'  to maximum at layer 'full_fan_speed_layer'.  'full_fan_speed_layer' will be ignored if lower than 'disable_fan_first_layers', in which case  the fan will be running at maximum allowed speed at layer 'disable_fan_first_layers' + 1.
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Expert
* Valeur par défaut :  0

## gap_fill
### Gap fill
 * Full label : Enable Gap fill
 * Groupe : Perimètre
Enable gap fill algorithm. It will extrude small lines between perimeters when there is not enough space for another perimeter or an infill.
 * Mode : Expert
* Valeur par défaut : true

## gap_fill_min_area
### Min surface
 * Full label : Min gap-fill surface
 * Groupe : Perimètre
This setting represents the minimum mm² for a gapfill extrusion to be created.
Can be a % of (perimeter width)²
 * Ratio over :  "perimeter_width_square"
 * Valeur min :  0
 * Mode : Expert
    def->set_default_value(new ConfigOptionFloatOrPercent{ 100,true

## gap_fill_overlap
### Gap fill overlap
 * Full label : Gap fill overlap
 * Groupe : width
This setting allows you to reduce the overlap between the perimeters and the gap fill. 100% means that no gaps are left, and 0% means that the gap fill won't touch the perimeters.\nIt's very experimental, please report about the usefulness. It may be removed if there is no use for it.
 * unit : %
 * Valeur min :  0
 * Valeur max :  100
 * Mode : Expert
* Valeur par défaut : 100

## gap_fill_speed
### Gap fill
 * Full label : Gap fill speed
 * Groupe : Vitesse
Speed for filling small gaps using short zigzag moves. Keep this reasonably low to avoid too much shaking and resonance issues.
 * unit : mm/s
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 20

## gcode_comments
### Verbose G-code
 * Groupe : output
Enable this to get a commented G-code file, with each line explained by descriptive text. If you print from an SD card, the additional weight of the file could make your firmware slow down.
 * Mode : Expert


## gcode_flavor
### G-code flavor
 * Groupe : general
Some G/M-code commands, including temperature control and others, are not universal.  Set this option to your printer's firmware to get a compatible output.  The 'No extrusion' flavor prevents Slic3r from exporting any extrusion value at all.
#### GCodeFlavor
 - reprapfirmware
 - repetier
 - teacup
 - makerware
 - marlin
 - klipper
 - sailfish
 - mach3
 - machinekit
 - smoothie
 - sprinter
 - lerdge
 - no-extrusion
 - RepRapFirmware
 - Repetier
 - Teacup
 - MakerWare (MakerBot)
 - Marlin
 - Klipper
 - Sailfish (MakerBot)
 - Mach3/LinuxCNC
 - Machinekit
 - Smoothie
 - Sprinter
 - Lerdge
 - No extrusion
 * Mode : Avancé

## gcode_label_objects
### Label objects
 * Groupe : output
Enable this to add comments into the G-Code labeling print moves with what object they belong to,  which is useful for the Octoprint CancelObject plugin. This settings is NOT compatible with  Single Extruder Multi Material setup and Wipe into Object / Wipe into Infill.
 * Aliases :  "label_printed_objects"
 * Mode : Avancé


## gcode_precision_xyz
### xyz decimals
 * Groupe : output
Choose how many digits after the dot for xyz coordinates.
 * Mode : Expert


## gcode_precision_e
### Extruder decimals
 * Groupe : output
Choose how many digits after the dot for extruder moves.
 * Mode : Expert
* Valeur par défaut : 5

## high_current_on_filament_swap
### High extruder current on filament swap
 * Groupe : general
It may be beneficial to increase the extruder motor current during the filament exchange  sequence to allow for rapid ramming feed rates and to overcome resistance when loading  a filament with an ugly shaped tip.
 * Mode : Expert


## infill_acceleration
### Infill
 * Full label : Infill acceleration
 * Groupe : Vitesse
This is the acceleration your printer will use for infill.        \nCan be a % of the default acceleration        \nSet zero to disable acceleration control for infill.
 * unit : mm/s² or %
 * Valeur min :  0
 * Mode : Expert


## infill_every_layers
### Combine infill every
 * Groupe : infill
This feature allows you to combine infill and speed up your print by extruding thicker  infill layers while preserving thin perimeters, thus accuracy.
 * unit : layers
 * Full label : Combine infill every n layers
 * Valeur min :  1
 * Mode : Avancé


    auto def_infill_anchor_min = def = this->add("infill_anchor
### Length of the infill anchor
 * Groupe : infill
Connect an infill line to an internal perimeter with a short segment of an additional perimeter.    If expressed as percentage (example: 15%) it is calculated over infill extrusion width. Slic3r tries to connect two close infill lines to a short perimeter segment. If no such perimeter segment    shorter than infill_anchor_max is found, the infill line is connected to a perimeter segment at just one side    and the length of the perimeter segment taken is limited to this parameter, but no longer than anchor_length_max.   
Set this parameter to zero to disable anchoring perimeters connected to a single infill line.
 * unit : mm or %
 * Ratio over :  "infill_extrusion_width"
 - 0 (no open anchors)
 - 1 mm
 - 2 mm
 - 5 mm
 - 10 mm
 - 1000 (unlimited)
 * Mode : Expert
* Valeur par défaut : 600 %

## infill_anchor_max
### Maximum length of the infill anchor
    def->category    = def_infill_anchor_min->category
Connect an infill line to an internal perimeter with a short segment of an additional perimeter.    If expressed as percentage (example: 15%) it is calculated over infill extrusion width. Slic3r tries to connect two close infill lines to a short perimeter segment. If no such perimeter segment    shorter than this parameter is found, the infill line is connected to a perimeter segment at just one side    and the length of the perimeter segment taken is limited to infill_anchor, but no longer than this parameter.   
If set to 0, the old algorithm for infill connection will be used, it should create the same result as with 1000 & 0.
    def->sidetext    = def_infill_anchor_min->sidetext
    def->ratio_over  = def_infill_anchor_min->ratio_over
    def->gui_type    = def_infill_anchor_min->gui_type
    def->enum_values = def_infill_anchor_min->enum_values
 - 0 (Simple connect)
 - 1 mm
 - 2 mm
 - 5 mm
 - 10 mm
 - 1000 (unlimited)
 * Mode : Avancé
* Valeur par défaut : 0

## infill_dense
### Dense infill layer
 * Full label : Dense infill layer
 * Groupe : infill
Enables the creation of a support layer under the first solid layer. This allows you to use a lower infill ratio without compromising the top quality. The dense infill is laid out with a 50% infill density.
 * Mode : Simple


## infill_connection
### Connection of sparse infill lines
 * Groupe : infill
Give to the infill algorithm if the infill needs to be connected, and on which perimeters Can be useful for art or with high infill/perimeter overlap. The result may vary between infill types.
#### InfillConnection
 - Connected
 - Connected to hole perimeters
 - Connected to outer perimeters
 - Not connected
 * Mode : Expert


## infill_connection_top
### Connection of top infill lines
 * Groupe : infill
Give to the infill algorithm if the infill needs to be connected, and on which perimeters Can be useful for art or with high infill/perimeter overlap. The result may vary between infill types.
#### InfillConnection
 - Connected
 - Connected to hole perimeters
 - Connected to outer perimeters
 - Not connected
 * Mode : Expert

## infill_connection_bottom
### Connection of bottom infill lines
 * Groupe : infill
Give to the infill algorithm if the infill needs to be connected, and on which perimeters Can be useful for art or with high infill/perimeter overlap. The result may vary between infill types.
#### InfillConnection
 - connected
 - holes
 - outershell
 - notconnected
 - Connected
 - Connected to hole perimeters
 - Connected to outer perimeters
 - Not connected
 * Mode : Expert


## infill_connection_solid
### Connection of solid infill lines
 * Groupe : infill
Give to the infill algorithm if the infill needs to be connected, and on which perimeters Can be useful for art or with high infill/perimeter overlap. The result may vary between infill types.
#### InfillConnection
 - connected
 - holes
 - outershell
 - notconnected
 - Connected
 - Connected to hole perimeters
 - Connected to outer perimeters
 - Not connected
 * Mode : Expert

    
## infill_dense_algo
### Algorithm
 * Full label : Dense infill algorithm
 * Groupe : infill
Choose the way the dense layer is laid out. The automatic option lets it try to draw the smallest surface with only strait lines inside the sparse infill. The Anchored option just slightly enlarges (by 'Default infill margin') the surfaces that need a better support.
#### DenseInfillAlgo
 - automatic
 - autosmall
 - autoenlarged
 - enlarged
 - Automatic
 - Automatic, only for small areas
 - Automatic, or anchored if too big
 - Anchored
 * Mode : Avancé


## infill_extruder
### Infill extruder
 * Groupe : extruders
The extruder to use when printing infill.
 * Valeur min :  1
 * Mode : Avancé


## infill_extrusion_width
### Infill
 * Full label : Infill width
 * Groupe : width
Set this to a non-zero value to set a manual extrusion width for infill. If left as zero, default extrusion width will be used if set, otherwise 1.125 x nozzle diameter will be used. You may want to use fatter extrudates to speed up the infill and make your parts stronger. If expressed as percentage (for example 110%) it will be computed over nozzle diameter.

You can set either 'Spacing', or 'Width' the other will be calculated, using default layer height.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## infill_extrusion_spacing
### Infill
 * Full label : Infill spacing
 * Groupe : width
Like First layer width but spacing is the distance between two lines (as they overlap a bit, it's not the same).

You can set either 'Spacing', or 'Width' the other will be calculated, using default layer height.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## infill_first
### Infill before perimeters
 * Groupe : infill
This option will switch the print order of perimeters and infill, making the latter first.
 * Mode : Expert


## infill_only_where_needed
### Only infill where needed
 * Groupe : infill
This option will limit infill to the areas actually needed for supporting ceilings  (it will act as internal support material). If enabled, this slows down the G-code generation  due to the multiple checks involved.
 * Mode : Avancé


## infill_overlap
### Infill/perimeters overlap
 * Groupe : width
This setting applies an additional overlap between infill and perimeters for better bonding.  Theoretically this shouldn't be needed, but backlash might cause gaps. If expressed  as percentage (example: 15%) it is calculated over perimeter extrusion width.
 * unit : mm or %
 * Ratio over :  "perimeter_extrusion_width"
 * Mode : Expert
* Valeur par défaut : 25 %

## infill_speed
### Sparse
 * Full label : Sparse infill speed
 * Groupe : Vitesse
Speed for printing the internal fill. Set to zero for auto.
 * unit : mm/s
 * Aliases :  "print_feed_rate", "infill_feed_rate"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 80

## inherits
### Inherits profile
Name of the profile, from which this profile inherits.


    // The following value is to be stored into the project file (AMF, 3MF, Config ...)
    // and it contains a sum of "inherits" values over the print and filament profiles.
## inherits_cummulative

## interface_shells
### Interface shells
Force the generation of solid shells between adjacent materials/volumes.  Useful for multi-extruder prints with translucent materials or manual soluble  support material.
 * Groupe : Perimètre
 * Mode : Expert


## ironing
### Enable ironing
Enable ironing of the top layers with the hot print head for smooth surface
 * Groupe : ironing
 * Mode : Avancé


## ironing_angle
### Ironing angle
 * Groupe : ironing
Ironing angle. if negative, it will use the fill angle.
 * unit : °
 * Valeur min :  -1
 * Mode : Expert
* Valeur par défaut : -1

## ironing_type
### Ironing Type
 * Groupe : ironing
Ironing Type
#### IroningType
 - top
 - topmost
 - solid
 - All top surfaces
 - Topmost surface only
 - All solid surfaces
 * Mode : Avancé

## ironing_flowrate
### Flow rate
 * Groupe : ironing
Percent of a flow rate relative to object's normal layer height.         It's the percentage of the layer that will be over-extruded on top to do the ironing.
 * unit : %
 * Ratio over :  "layer_height"
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 15

## ironing_spacing
### Spacing between ironing lines
 * Groupe : ironing
Distance between ironing lines
 * unit : mm
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0.1

## ironing_speed
### Ironing
 * Groupe : ironing
Ironing
 * unit : mm/s
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 15

## layer_gcode
### After layer change G-code
 * Groupe : customgcode
This custom code is inserted at every layer change, right after the Z move and before the extruder moves to the first layer point. Note that you can use placeholder variables for all Slic3r settings as well as [layer_num] and [layer_z].
 * Mode : Expert


## feature_gcode
### After layer change G-code
 * Groupe : customgcode
This custom code is inserted at every extrusion type change.Note that you can use placeholder variables for all Slic3r settings as well as [extrusion_role], [layer_num] and [layer_z] that can take these string values: { Perimeter, ExternalPerimeter, OverhangPerimeter, InternalInfill, SolidInfill, TopSolidInfill, BridgeInfill, GapFill, Skirt, SupportMaterial, SupportMaterialInterface, WipeTower, Mixed }. Mixed is only used when the role of the extrusion is not unique, not exactly inside another category or not known.
 * Mode : Expert


## exact_last_layer_height
### Exact last layer height
 * Groupe : Perimètre
This setting controls the height of last object layers to put the last layer at the exact highest height possible. Experimental.
 * Mode : Expert


## remaining_times
### Supports remaining times
 * Groupe : firmware
Emit M73 P[percent printed] R[remaining time in minutes] at 1 minute intervals into the G-code to let the firmware show accurate remaining time. As of now only the Prusa i3 MK3 firmware recognizes M73. Also the i3 MK3 firmware supports M73 Qxx Sxx for the silent mode.
 * Mode : Expert


## silent_mode
### Supports stealth mode
 * Groupe : firmware
The firmware supports stealth mode
 * Mode : Avancé
* Valeur par défaut : true

## fan_speedup_time
### Fan startup delay
 * Groupe : firmware
Move the fan start in the past by at least this delay (in seconds, you can use decimals). It assumes infinite acceleration for this time estimation, and will only take into account G1 and G0 moves. Use 0 to deactivate.
 * unit : s
 * Mode : Avancé
* Valeur par défaut : 0

## fan_speedup_overhangs
### Allow fan delay on overhangs
 * Groupe : firmware
Will only take into account the delay for the cooling of overhangs.
 * Mode : Avancé
* Valeur par défaut : true

## fan_kickstart
### Fan KickStart time
 * Groupe : firmware
Add a M106 S255 (max speed for fan) for this amount of seconds before going down to the desired speed to kick-start the cooling fan.  \nSet to 0 to deactivate.
 * unit : s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0

## machine_limits_usage
### How to apply limits
 * Full label : Purpose of Machine Limits
 * Groupe : limits
How to apply the Machine Limits.
* In every case, they will be used as safeguards: Even if you use a print profile that sets an acceleration of 5000,   if in your machine limits the acceleration is 4000, the outputted gcode will use the 4000 limit.
* You can also use it as a safeguard and to have a better printing time estimate.  
* You can also use it as a safeguard, to have a better printing time estimate and emit the limits at the begining of the gcode file, with M201 M202 M203 M204 and M205 commands.   If you want only to write a sub-set, choose the 'for time estimate' option and write your own gcodes in the custom gcode section.
#### MachineLimitsUsage
 - emit_to_gcode
 - time_estimate_only
 - limits
 - ignore
 - Also emit limits to G-code
 - Use also for time estimate
 - Use only as safeguards
 - Disable
 * Mode : Avancé


    // M205 S... [mm/sec]
## machine_min_extruding_rate
 * Full label : Minimum feedrate when extruding
 * Groupe : limits
Minimum feedrate when extruding (M205 S)
 * unit : mm/s
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0., 0.

    // M205 T... [mm/sec]
## machine_min_travel_rate
 * Full label : Minimum travel feedrate
 * Groupe : limits
Minimum travel feedrate (M205 T)
 * unit : mm/s
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0., 0.

    // M204 S... [mm/sec^2]
## machine_max_acceleration_extruding
 * Full label : Maximum acceleration when extruding
 * Groupe : limits
Maximum acceleration when extruding (M204 P)
 * unit : mm/s²
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 1500., 1250.

    // M204 R... [mm/sec^2]
## machine_max_acceleration_retracting
 * Full label : Maximum acceleration when retracting
 * Groupe : limits
Maximum acceleration when retracting (M204 R)
 * unit : mm/s²
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 1500., 1250.

    // M204 T... [mm/sec^2]
## machine_max_acceleration_travel
 * Full label : Maximum acceleration when travelling
 * Groupe : limits
Maximum acceleration when travelling (M204 T)
 * unit : mm/s²
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 1500., 1250.

## max_fan_speed
### Max
 * Full label : Max fan speed
 * Groupe : cooling
This setting represents the maximum speed of your fan, used when the layer print time is Very short.
 * unit : %
 * Valeur min :  0
 * Valeur max :  100
 * Mode : Avancé
* Valeur par défaut :  100

## max_layer_height
### Max
 * Full label : Max layer height
 * Groupe : general
This is the highest printable layer height for this extruder, used to cap  the variable layer height and support layer height. Maximum recommended layer height  is 75% of the extrusion width to achieve reasonable inter-layer adhesion.  If set to 0, layer height is limited to 75% of the nozzle diameter.
 * unit : mm
 * Valeur min :  0
 * Mode : Simple
* Valeur par défaut : 0.

## max_print_speed
### Max print speed
 * Groupe : Vitesse
When setting other speed settings to 0, Slic3r will autocalculate the optimal speed in order to keep constant extruder pressure. This experimental setting is used to set the highest print speed you want to allow.
 * unit : mm/s
 * Valeur min :  1
 * Mode : Expert
* Valeur par défaut : 80

## max_speed_reduction", coPercents)
### Max speed reduction
 * Groupe : Vitesse
Set to 90% if you don't want the speed to be reduced by more than 90%.
 * unit : %
 * Valeur min :  0
 * Valeur max :  100
 * Mode : Expert
* Valeur par défaut : 90

## max_volumetric_speed
### Max volumetric speed
 * Groupe : extruders
This experimental setting is used to set the maximum volumetric speed your  extruder supports.
 * unit : mm³/s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0

#ifdef HAS_PRESSURE_EQUALIZER
## max_volumetric_extrusion_rate_slope_positive
### Max volumetric slope positive
This experimental setting is used to limit the speed of change in extrusion rate.  A value of 1.8 mm³/s² ensures, that a change from the extrusion rate  of 1.8 mm³/s (0.45mm extrusion width, 0.2mm extrusion height, feedrate 20 mm/s)  to 5.4 mm³/s (feedrate 60 mm/s) will take at least 2 seconds.
 * unit : mm³/s²
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0

## max_volumetric_extrusion_rate_slope_negative
### Max volumetric slope negative
This experimental setting is used to limit the speed of change in extrusion rate.  A value of 1.8 mm³/s² ensures, that a change from the extrusion rate  of 1.8 mm³/s (0.45mm extrusion width, 0.2mm extrusion height, feedrate 20 mm/s)  to 5.4 mm³/s (feedrate 60 mm/s) will take at least 2 seconds.
 * unit : mm³/s²
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0


## min_fan_speed
### Default fan speed
 * Full label : Default fan speed
 * Groupe : cooling
This setting represents the base fan speed this filament needs, or at least the minimum PWM your fan needs to work.
 * unit : %
 * Valeur min :  0
 * Valeur max :  100
 * Mode : Simple
* Valeur par défaut : 35

## fan_percentage
### Fan PWM from 0-100
 * Groupe : output
Set this if your printer uses control values from 0-100 instead of 0-255.
 * Mode : Avancé

## min_layer_height
### Min
 * Full label : Min layer height
 * Groupe : extruders
This is the lowest printable layer height for this extruder and limits  the resolution for variable layer height. Typical values are between 0.05 mm and 0.1 mm.
 * unit : mm
 * Valeur min :  0
 * Mode : Simple
* Valeur par défaut : 0.07

## min_length
### Minimum extrusion length
 * Groupe : Vitesse
Too many too small commands may overload the firmware / connection. Put a higher value here if you see strange slowdown.   \n0 to disable.
 * unit : mm
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0.035

## min_width_top_surface
### Minimum top width for infill
 * Groupe : Vitesse
If a top surface has to be printed and it's partially covered by another layer, it won't be considered at a top layer where its width is below this value. This can be useful to not let the 'one perimeter on top' trigger on surface that should be covered only by perimeters. This value can be a mm or a % of the perimeter extrusion width.
 * unit : mm or %
 * Ratio over :  "perimeter_extrusion_width"
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 200 %

## min_print_speed
### Min print speed
 * Groupe : Vitesse
Slic3r will never scale the speed below this one.
 * unit : mm/s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 10.

## min_skirt_length
### Minimal filament extrusion length
 * Groupe : skirtBrim
Generate no less than the number of skirt loops required to consume  the specified amount of filament on the bottom layer. For multi-extruder machines,  this minimum applies to each extruder.
 * unit : mm
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0

## notes
### Configuration notes
 * Groupe : notes
Here you can put your personal notes. This text will be added to the G-code  header comments.
 * Mode : Avancé


## nozzle_diameter
### Nozzle diameter
 * Groupe : extruders
This is the diameter of your extruder nozzle (for example: 0.5, 0.35 etc.)
 * unit : mm
 * Mode : Avancé
* Valeur par défaut : 0.4

## host_type
### Host Type
 * Groupe : general
Slic3r can upload G-code files to a printer host. This field must contain  the kind of the host.
#### PrintHostType
 - OctoPrint
 - Duet
 - FlashAir
 - AstroBox
 - Repetier
 - Klipper
 * Mode : Avancé


## printhost_apikey
### API Key / Password
 * Groupe : general
Slic3r can upload G-code files to a printer host. This field should contain  the API Key or the password required for authentication.
 * Mode : Avancé

    
## printhost_cafile
### HTTPS CA File
Custom CA certificate file can be specified for HTTPS OctoPrint connections, in crt/pem format.  If left blank, the default OS CA certificate repository is used.
 * Mode : Avancé


## print_host
### Hostname, IP or URL
 * Groupe : general
Slic3r can upload G-code files to a printer host. This field should contain the hostname, IP address or URL of the printer host instance.
 * Mode : Avancé


## only_retract_when_crossing_perimeters
### Only retract when crossing perimeters
 * Groupe : extruders
Disables retraction when the travel path does not exceed the upper layer's perimeters  (and thus any ooze will probably be invisible).
 * Mode : Expert
* Valeur par défaut : true

## ooze_prevention
### Enable
 * Groupe : extruders
This option will drop the temperature of the inactive extruders to prevent oozing.  It will enable a tall skirt automatically and move extruders outside such  skirt when changing temperatures.
 * Mode : Expert


## output_filename_format
### Output filename format
 * Groupe : output
You can use all configuration options as variables inside this template.  For example: [layer_height], [fill_density] etc. You can also use [timestamp],  [year], [month], [day], [hour], [minute], [second], [version], [input_filename],  [input_filename_base].
 * Mode : Expert
[input_filename_base].gcode

## overhangs_speed
### Overhangs
 * Full label : Overhangs speed
 * Groupe : Vitesse
Speed for printing overhangs.\nCan be a % of the bridge speed.
 * unit : mm/s
 * Ratio over :  "bridge_speed"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 100

## overhangs_width_speed
### 'As bridge' speed threshold
 * Full label : Overhang bridge speed threshold
 * Groupe : Perimètre
Minimum unsupported width for an extrusion to apply the bridge fan & overhang speed to this overhang. Can be in mm or in a % of the nozzle diameter. Set to 0 to deactivate.
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 55

## overhangs_width
### 'As bridge' flow threshold
 * Full label : Overhang bridge flow threshold
 * Groupe : Perimètre
Minimum unsupported width for an extrusion to apply the bridge flow to this overhang. Can be in mm or in a % of the nozzle diameter. Set to 0 to deactivate.
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 75 %

## overhangs_reverse
### Reverse on odd
 * Full label : Overhang reversal
 * Groupe : Perimètre
Extrude perimeters that have a part over an overhang in the reverse direction on odd layers. This alternating pattern can drastically improve steep overhang.\n!! this is a very slow algorithm (it uses the same results as extra_perimeters_overhangs) !!
 * Mode : Avancé


## overhangs_reverse_threshold
### Reverse threshold
 * Full label : Overhang reversal threshold
 * Groupe : Perimètre
Number of mm the overhang need to be for the reversal to be considered useful. Can be a % of the perimeter width.
 * Ratio over :  "perimeter_extrusion_width"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 250

## no_perimeter_unsupported_algo
### No perimeters on bridge areas
 * Groupe : Perimètre
Experimental option to remove perimeters where there is nothing under them and where a bridged infill should be better. \n  * Remove perimeters: remove the unsupported perimeters, leave the bridge area as-is.\n  * Keep only bridges: remove the perimeters in the bridge areas, keep only bridges that end in solid area.\n  * Keep bridges and overhangs: remove the unsupported perimeters, keep only bridges that end in solid area, fill the rest with overhang perimeters+bridges.\n  * Fill the voids with bridges: remove the unsupported perimeters, draw bridges over the whole hole.* !! this one can escalate to problems with overhangs shaped like  /\\, so you should use it only on one layer at a time via the height-range modifier!\n!!Computationally intensive!!. 
#### NoPerimeterUnsupportedAlgo
 - Disabled
 - Remove perimeters
 - Keep only bridges
 - Keep bridges and overhangs
 - Fill the voids with bridges
 * Mode : Avancé


## parking_pos_retraction
### Filament parking position
Distance of the extruder tip from the position where the filament is parked  when unloaded. This should match the value in printer firmware. 
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 92.f

## extra_loading_move
### Extra loading distance
When set to zero, the distance the filament is moved from parking position during load  is exactly the same as it was moved back during unload. When positive, it is loaded further,   if negative, the loading move is shorter than unloading. 
 * unit : mm
 * Mode : Avancé
* Valeur par défaut : -2.f

## perimeter_acceleration
### Perimeters
 * Full label : Perimeter acceleration
 * Groupe : Vitesse
This is the acceleration your printer will use for perimeters.
Can be a % of the default acceleration
Set zero to disable acceleration control for perimeters.
 * unit : mm/s² or %
 * Mode : Expert


## perimeter_round_corners
### Round corners
 * Full label : Round corners for perimeters
 * Groupe : Perimètre
Internal perimeters will go around sharp corners by turning around instead of making the same sharp corner.    This can help when there are visible holes in sharp corners on perimeters
 * Mode : Avancé


## perimeter_extruder
### Perimeter extruder
 * Groupe : extruders
The extruder to use when printing perimeters and brim. First extruder is 1.
 * Aliases :  "perimeters_extruder"
 * Valeur min :  1
 * Mode : Avancé


## perimeter_extrusion_width
### Perimeters
 * Full label : Perimeter width
 * Groupe : width
Set this to a non-zero value to set a manual extrusion width for perimeters. You may want to use thinner extrudates to get more accurate surfaces. If left zero, default extrusion width will be used if set, otherwise 1.125 x nozzle diameter will be used. If expressed as percentage (for example 105%) it will be computed over nozzle diameter.

You can set either 'Spacing', or 'Width' the other will be calculated, using the perimeter 'Overlap' percentages and default layer height.
 * unit : mm or %
 * Aliases :  "perimeters_extrusion_width"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## perimeter_extrusion_spacing
### Perimeters
 * Full label : Perimeter spacing
 * Groupe : width
Like Perimeter width but spacing is the distance between two perimeter lines (as they overlap a bit, it's not the same).    \nYou can set either 'Spacing', or 'Width' the other will be calculated, using the perimeter 'Overlap' percentages and default layer height.
 * unit : mm or %
 * Aliases :  "perimeters_extrusion_width"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## perimeter_speed
### Default
 * Full label : Default speed
 * Groupe : Vitesse
Speed for perimeters (contours, aka vertical shells). Set to zero for auto.
 * unit : mm/s
 * Aliases :  "perimeter_feed_rate"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 60

## perimeters
### Perimeters
 * Full label : Perimeters count
 * Groupe : Perimètre
This option sets the number of perimeters to generate for each layer.  Note that Slic3r may increase this number automatically when it detects  sloping surfaces which benefit from a higher number of perimeters  if the Extra Perimeters option is enabled.
 * unit : (minimum).
 * Aliases :  "perimeter_offsets"
 * Valeur min :  0
 * Valeur max :  10000


## post_process
### Post-processing scripts
 * Groupe : customgcode
If you want to process the output G-code through custom scripts,  just list their absolute paths here. Separate multiple scripts with a semicolon.  Scripts will be passed the absolute path to the G-code file as the first argument,  and they can access the Slic3r config settings by reading environment variables.
 * Mode : Expert


## printer_model
### Printer type
Type of the printer.


## printer_notes
### Printer notes
 * Groupe : notes
You can put your notes regarding the printer here.
 * Mode : Avancé


## printer_vendor
### Printer vendor
Name of the printer vendor.


## printer_variant
### Printer variant
Name of the printer variant. For example, the printer variants may be differentiated by a nozzle diameter.


## print_settings_id



## printer_settings_id



## physical_printer_settings_id



## support_material_solid_first_layer
### Solid first layer
 * Groupe : support
Use a solid layer instead of a raft for the layer that touches the build plate.
 * Mode : Avancé


## raft_layers
### Raft layers
 * Groupe : support
The object will be raised by this number of layers, and support material will be generated under it.
 * unit : layers
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0

## resolution
### Resolution
 * Groupe : slicing
Minimum detail resolution, used to simplify the input file for speeding up the slicing job and reducing memory usage. High-resolution models often carry more details than printers can render. Set to zero to disable any simplification and use full resolution from input. \nNote: Slic3r has an internal working resolution of 0.0001mm.\nInfill & Thin areas are simplified up to 0.0125mm.
 * unit : mm
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0.002

## retract_before_travel
### Minimum travel after retraction
 * Groupe : extruders
Retraction is not triggered when travel moves are shorter than this length.
 * unit : mm
 * Mode : Avancé
 * Valeur min :  0
* Valeur par défaut : 2.

## retract_before_wipe", coPercents
### Retract amount before wipe
 * Groupe : extruders
With bowden extruders, it may be wise to do some amount of quick retract  before doing the wipe movement.
 * unit : %
 * Mode : Avancé


## retract_layer_change
### Retract on layer change
 * Groupe : extruders
This flag enforces a retraction whenever a Z move is done (before it).
 * Mode : Avancé
* Valeur par défaut : false

## retract_length
### Length
 * Full label : Retraction Length
 * Groupe : extruders
When retraction is triggered, filament is pulled back by the specified amount  (the length is measured on raw filament, before it enters the extruder).
 * unit : mm (zero to disable)
 * Valeur min :  0
* Valeur par défaut : 2.

## print_retract_length
### Retraction length
 * Groupe : filament
Override the retract_length setting from the printer config. Used for calibration. Set negative to disable
 * Mode : Expert
* Valeur par défaut :  -1.f

## retract_length_toolchange
### Length
 * Full label : Retraction Length (Toolchange)
When retraction is triggered before changing tool, filament is pulled back  by the specified amount (the length is measured on raw filament, before it enters  the extruder).
 * unit : mm (zero to disable)
 * Mode : Expert
 * Valeur min :  0
* Valeur par défaut : 10.

## retract_lift
### Lift Z
 * Groupe : extruders
If you set this to a positive value, Z is quickly raised every time a retraction  is triggered. When using multiple extruders, only the setting for the first extruder  will be considered.
 * unit : mm
* Valeur par défaut : 0.

## retract_lift_above
### Above Z
 * Full label : Only lift Z above
 * Groupe : extruders
If you set this to a positive value, Z lift will only take place above the specified  absolute Z. You can tune this setting for skipping lift on the first layers.
 * unit : mm
 * Mode : Avancé
* Valeur par défaut : 0.



## retract_lift_below
### Below Z
 * Full label : Only lift Z below
 * Groupe : extruders
If you set this to a positive value, Z lift will only take place below  the specified absolute Z. You can tune this setting for limiting lift  to the first layers.
 * unit : mm
 * Mode : Avancé
* Valeur par défaut : 0.

## retract_lift_first_layer
### Enforce on first layer
 * Full label : Enforce lift on first layer
 * Groupe : extruders
Select this option to enforce z-lift on the first layer.
 * Mode : Avancé


## retract_lift_top
### On surfaces
 * Full label : Lift only on
 * Groupe : extruders
Select this option to not use/enforce the z-lift on a top surface.
	- All surfaces
	- Not on top
	- Only on top
 * Mode : Avancé
* Valeur par défaut : All surfaces

## retract_restart_extra
### Extra length on restart
When the retraction is compensated after the travel move, the extruder will push  this additional amount of filament. This setting is rarely needed.
 * unit : mm
 * Mode : Expert
* Valeur par défaut : 0.

## retract_restart_extra_toolchange
### Extra length on restart
 * Full label : Extrat length on toolchange restart
When the retraction is compensated after changing tool, the extruder will push  this additional amount of filament.
 * unit : mm
 * Mode : Expert
* Valeur par défaut : 0.

## retract_speed
### Retraction Speed
 * Full label : Retraction Speed
 * Groupe : extruders
The speed for retractions (this only applies to the extruder motor).
 * unit : mm/s
 * Mode : Avancé
* Valeur par défaut : 40.

## deretract_speed
### Deretraction Speed
 * Full label : Deretraction Speed
 * Groupe : extruders
The speed for loading of a filament into extruder after retraction  (this only applies to the extruder motor). If left as zero, the retraction speed is used.
 * unit : mm/s
 * Mode : Avancé
* Valeur par défaut : 0.

## seam_position
### Seam position
 * Groupe : Perimètre
Position of perimeters' starting points.  \n 
#### SeamPosition
 - cost
 - random
 - aligned
 - rear
 - Cost-based
 - Random
 - Aligned
 - Rear
 * Mode : Simple

## seam_angle_cost
### Angle cost
 * Full label : Seam angle cost
 * Groupe : Perimètre
Cost of placing the seam at a bad angle. The worst angle (max penalty) is when it's flat.
 * unit : %
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 100

## seam_travel_cost
### Travel cost
 * Full label : Seam travel cost
 * Groupe : Perimètre
Cost of moving the extruder. The highest penalty is when the point is the furthest from the position of the extruder before extruding the external perimeter
 * unit : %
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 100


## seam_preferred_direction
### Direction
 * unit : °
 * Full label : Preferred direction of the seam
Seam preferred direction
 * Valeur min :  0
 * Valeur max :  360
* Valeur par défaut : 0
* Valeur par défaut : 0

## seam_preferred_direction_jitter
### Jitter
 * unit : °
 * Full label : Seam preferred direction jitter
Preferred direction of the seam - jitter
 * Valeur min :  0
 * Valeur max :  360
* Valeur par défaut : 30
* Valeur par défaut : 30
#endif

## skirt_distance
### Distance from object
 * Groupe : skirtBrim
Distance between skirt and object(s). Set this to zero to attach the skirt  to the object(s) and get a brim for better adhesion.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 6

## skirt_height
### Skirt height
 * Groupe : skirtBrim
Height of skirt expressed in layers. Set this to a tall value to use skirt  as a shield against drafts.
 * unit : layers
 * Mode : Avancé


## skirt_extrusion_width
### Skirt
 * Full label : Skirt width
 * Groupe : width
Horizontal width of the skirt that will be printed around each object. If left as zero, first layer extrusion width will be used if set and the skirt is only 1 layer height, or perimeter extrusion width will be used (using the computed value if not set).
 * unit : mm or %
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## draft_shield
### Draft shield
If enabled, the skirt will be as tall as a highest printed object.     				 "This is useful to protect an ABS or ASA print from warping and detaching from print bed due to wind draft.
 * Mode : Avancé


## skirts
### Loops (minimum)
 * Full label : Skirt Loops
 * Groupe : skirtBrim
Number of loops for the skirt. If the Minimum Extrusion Length option is set,  the number of loops might be greater than the one configured here. Set this to zero  to disable skirt completely.
 * Valeur min :  0
 * Mode : Simple


## slowdown_below_layer_time
### Slow down if layer print time is below
 * Groupe : cooling
If layer print time is estimated below this number of seconds, print moves speed will be scaled down to extend duration to this value, if possible.\nSet to 0 to disable.
 * unit : approximate seconds
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Expert
* Valeur par défaut : 5

## small_perimeter_speed
### Speed
 * Full label : Small perimeters speed
 * Groupe : Vitesse
This separate setting will affect the speed of perimeters having radius <= 6.5mm  (usually holes). If expressed as percentage (for example: 80%) it will be calculated  on the perimeters speed setting above. Set to zero for auto.
 * unit : mm/s or %
 * Ratio over :  "perimeter_speed"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 15

## small_perimeter_min_length
### Min length
 * Full label : Min small perimeters length
 * Groupe : Vitesse
This sets the threshold for small perimeter length. Every loop with a length lower than this will be printed at small perimeter speed\nCan be a mm value or a % of the nozzle diameter.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 6


## small_perimeter_max_length
### Max length
 * Full label : Max small perimeters length
 * Groupe : Vitesse
This sets the end of the threshold for small perimeter length. Every perimeter loop lower than this will see their speed reduced a bit, from their normal speed at this length down to small perimeter speed.\nCan be a mm or a % of the nozzle diameter.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 20

## curve_smoothing_angle_convex
### Min convex angle
 * Full label : Curve smoothing minimum angle (convex)
 * Groupe : slicing
Minimum (convex) angle at a vertex to enable smoothing (trying to create a curve around the vertex). 180 :  nothing will be smooth, 0 :  all angles will be smoothened.
 * unit : °
 * Aliases :  "curve_smoothing_angle"
 * Valeur min :  0
 * Valeur max :  180
 * Mode : Avancé
* Valeur par défaut : 0

## curve_smoothing_angle_concave
### Min concave angle
 * Full label : Curve smoothing minimum angle (concave)
 * Groupe : slicing
Minimum (concave) angle at a vertex to enable smoothing (trying to create a curve around the vertex). 180 :  nothing will be smooth, 0 :  all angles will be smoothened.
 * unit : °
 * Valeur min :  0
 * Valeur max :  180
 * Mode : Avancé
* Valeur par défaut : 0

## curve_smoothing_precision
### Precision
 * Full label : Curve smoothing precision
 * Groupe : slicing
These parameters allow the slicer to smooth the angles in each layer. The precision will be at least the new precision of the curve. Set to 0 to deactivate.

Note: as it uses the polygon's edges and only works in the 2D planes, you must have a very clean or hand-made 3D model.\nIt's really only useful to smoothen functional models or very wide angles.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0

## curve_smoothing_cutoff_dist
### cutoff
 * Full label : Curve smoothing cutoff dist
 * Groupe : slicing
Maximum distance between two points to allow adding new ones. Allow to avoid distorting long strait areas. 0 to disable.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 2

## solid_infill_below_area
### Solid infill threshold area
 * Groupe : infill
Force solid infill for regions having a smaller area than the specified threshold.
 * unit : mm²
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 70

## solid_infill_extruder
### Solid infill extruder
 * Groupe : extruders
The extruder to use when printing solid infill.
 * Valeur min :  1
 * Mode : Avancé


## solid_infill_every_layers
### Solid infill every
 * Groupe : infill
This feature allows you to force a solid layer every given number of layers.  Zero to disable. You can set this to any value (for example 9999)  Slic3r will automatically choose the maximum possible number of layers  to combine according to nozzle diameter and layer height.
 * unit : layers
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0

## solid_infill_extrusion_width
### Solid infill
 * Full label : Solid infill width
 * Groupe : width
Set this to a non-zero value to set a manual extrusion width for infill for solid surfaces. If left as zero, default extrusion width will be used if set, otherwise 1.125 x nozzle diameter will be used. If expressed as percentage (for example 110%) it will be computed over nozzle diameter.\nYou can set either 'Spacing', or 'Width' the other will be calculated, using default layer height.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## solid_infill_extrusion_spacing
### Solid spacing
 * Full label : Solid infill spacing
 * Groupe : width
Like Solid infill width but spacing is the distance between two lines (as they overlap a bit, it's not the same).

You can set either 'Spacing', or 'Width' the other will be calculated, using default layer height.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## solid_infill_speed
### Solid
 * Full label : Solid infill speed
 * Groupe : Vitesse
Speed for printing solid regions (top/bottom/internal horizontal shells).  This can be expressed as a percentage (for example: 80%) over the default infill speed.  Set to zero for auto.
 * unit : mm/s or %
 * Ratio over :  "infill_speed"
 * Aliases :  "solid_infill_feed_rate"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 20

## solid_layers
### Solid layers
 * Groupe : slicing
Number of solid layers to generate on top and bottom surfaces.
 * Valeur min :  0

## solid_min_thickness
### Minimum thickness of a top / bottom shell
Minimum thickness of a top / bottom shell
 * Valeur min :  0

## spiral_vase
### Spiral vase
 * Groupe : Perimètre
This feature will raise Z gradually while printing a single-walled object  in order to remove any visible seam. This option requires a single perimeter,  no infill, no top solid layers and no support material. You can still set  any number of bottom solid layers as well as skirt/brim loops.  It won't work when printing more than one single object.


## standby_temperature_delta
### Temperature variation
Temperature difference to be applied when an extruder is not active.  Enables a full-height 'sacrificial' skirt on which the nozzles are periodically wiped.
 * unit :  "∆°C"
 * Valeur min :  -max_temp
 * Valeur max :  max_temp
 * Mode : Expert
* Valeur par défaut : -5

## start_gcode
### Start G-code
 * Groupe : customgcode
This start procedure is inserted at the beginning, after bed has reached the target temperature and extruder has just started heating, but before extruder has finished heating. If Slic3r detects M104 or M190 in your custom codes, such commands will not be prepended automatically so you're free to customize the order of heating commands and other custom actions. Note that you can use placeholder variables for all Slic3r settings, so you can put a 'M109 S[first_layer_temperature]' command wherever you want.\n placeholders: initial_extruder, total_layer_count, has_wipe_tower, has_single_extruder_multi_material_priming, total_toolchanges, bounding_box[minx,miny,maxx,maxy]
 * Mode : Expert
G28  home all axes\nG1 Z5 F5000  lift nozzle\n

## start_gcode_manual
### Only custom Start G-code
 * Groupe : customgcode
Ensure that the slicer won't add heating, fan, extruder... commands before or just after your start-gcode.  If set to true, you have to write a good and complete start_gcode, as no checks are made anymore.
 * Mode : Expert


## start_filament_gcode
### Start G-code
 * Full label : Filament start G-code
 * Groupe : customgcode
This start procedure is inserted at the beginning, after any printer start gcode (and  after any toolchange to this filament in case of multi-material printers).  This is used to override settings for a specific filament. If Slic3r detects  M104, M109, M140 or M190 in your custom codes, such commands will  not be prepended automatically so you're free to customize the order  of heating commands and other custom actions. Note that you can use placeholder variables  for all Slic3r settings, so you can put a 'M109 S[first_layer_temperature]' command  wherever you want. If you have multiple extruders, the gcode is processed  in extruder order.
 * Mode : Expert

## model_precision
### Model rounding precision
 * Full label : Model rounding precision
 * Groupe : slicing
This is the rounding error of the input object. It's used to align points that should be in the same line. Put 0 to disable.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0.0001

## color_change_gcode
### Color change G-code
This G-code will be used as a code for the color change
 * Mode : Expert
M600

## pause_print_gcode
### Pause Print G-code
This G-code will be used as a code for the pause print
 * Mode : Expert
M601

## template_custom_gcode
### Custom G-code
This G-code will be used as a custom code
 * Mode : Expert


## single_extruder_multi_material
### Single Extruder Multi Material
 * Groupe : mmsetup
The printer multiplexes filaments into a single hot end.
 * Mode : Avancé


## single_extruder_multi_material_priming
### Prime all printing extruders
 * Groupe : mmsetup
If enabled, all printing extruders will be primed at the front edge of the print bed at the start of the print.
 * Mode : Avancé
* Valeur par défaut : true

## wipe_tower_no_sparse_layers
### No sparse layers (EXPERIMENTAL)
 * Groupe : mmsetup
If enabled, the wipe tower will not be printed on layers with no toolchanges.    On layers with a toolchange, extruder will travel downward to print the wipe tower.    User is responsible for ensuring there is no collision with the print.
 * Mode : Avancé


## support_material
### Generate support material
 * Groupe : support
Enable support material generation.


## support_material_auto
### Auto generated supports
 * Groupe : support
If checked, supports will be generated automatically based on the overhang threshold value."\
              If unchecked, supports will be generated inside the 'Support Enforcer' volumes only.
 * Mode : Simple
* Valeur par défaut : true

## support_material_xy_spacing
### XY separation between an object and its support
 * Groupe : support
XY separation between an object and its support. If expressed as percentage  (for example 50%), it will be calculated over external perimeter width.
 * unit : mm or %
 * Ratio over :  "external_perimeter_extrusion_width"
 * Valeur min :  0
 * Mode : Avancé
    // Default is half the external perimeter width.
* Valeur par défaut : 50

## support_material_angle
### Pattern angle
 * Full label : Support pattern angle
 * Groupe : support
Use this setting to rotate the support material pattern on the horizontal plane.
 * unit : °
 * Valeur min :  0
 * Valeur max :  359
 * Mode : Expert
* Valeur par défaut : 0

## support_material_buildplate_only
### Support on build plate only
 * Groupe : support
Only create support if it lies on a build plate. Don't create support on a print.
 * Mode : Simple


## support_material_contact_distance_type
### Type
 * Full label : Support contact distance type
 * Groupe : support
How to compute the vertical z-distance.\nFrom filament: it uses the nearest bit of the filament. When a bridge is extruded, it goes below the current plane.\nFrom plane: it uses the plane-z. Same as 'from filament' if no 'bridge' is extruded.\nNone: No z-offset. Useful for Soluble supports.\n
#### SupportZDistanceType
 - From filament
 - From plane
 - None (soluble)
 * Mode : Avancé

## support_material_contact_distance_top
### Top
 * Full label : Contact distance on top of supports
 * Groupe : support
The vertical distance between support material interface and the object(when the object is printed on top of the support). Setting this to 0 will also prevent Slic3r from using bridge flow and speed for the first object layer. Can be a % of the extruding width used for the interface layers.
 * Ratio over :  "top_infill_extrusion_width"
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
 * Aliases :  "support_material_contact_distance"
* Valeur par défaut : 0.2

## support_material_contact_distance_bottom
### Bottom
 * Full label : Contact distance under the bottom of supports
 * Groupe : support
The vertical distance between object and support material interface(when the support is printed on top of the object). Can be a % of the extruding width used for the interface layers.
 * Ratio over :  "top_infill_extrusion_width"
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0.2

## support_material_enforce_layers
### Enforce support for the first
 * Groupe : support
Generate support material for the specified number of layers counting from bottom,  regardless of whether normal support material is enabled or not and regardless  of any angle threshold. This is useful for getting more adhesion of objects  having a very thin or poor footprint on the build plate.
 * unit : layers
 * Full label : Enforce support for the first n layers
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0

## support_material_extruder
### Support material/raft/skirt extruder
 * Groupe : extruders
The extruder to use when printing support material, raft and skirt  (1+, 0 to use the current extruder to minimize tool changes).
 * Valeur min :  0
 * Mode : Avancé


## support_material_extrusion_width
### Support material
 * Full label : Support material width
 * Groupe : width
Set this to a non-zero value to set a manual extrusion width for support material. If left as zero, default extrusion width will be used if set, otherwise nozzle diameter will be used. If expressed as percentage (for example 110%) it will be computed over nozzle diameter.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## support_material_interface_contact_loops
### Interface loops
 * Groupe : support
Cover the top contact layer of the supports with loops. Disabled by default.
 * Mode : Expert


## support_material_interface_extruder
### Support material/raft interface extruder
 * Groupe : extruders
The extruder to use when printing support material interface  (1+, 0 to use the current extruder to minimize tool changes). This affects raft too.
 * Valeur min :  0
 * Mode : Avancé


## support_material_interface_layers
### Interface layers
 * Groupe : support
Number of interface layers to insert between the object(s) and support material.
 * unit : layers
 * Valeur min :  0
 * Mode : Avancé


## support_material_interface_spacing
### Interface pattern spacing
 * Groupe : support
Spacing between interface lines. Set zero to get a solid interface.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0

## support_material_interface_speed
### Interface
 * Full label : Support interface speed
 * Groupe : support
Speed for printing support material interface layers. If expressed as percentage  (for example 50%) it will be calculated over support material speed.
 * unit : mm/s or %
 * Ratio over :  "support_material_speed"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 100 %

## support_material_pattern
### Pattern
 * Full label : Support pattern
 * Groupe : support
Pattern used to generate support material.
#### SupportMaterialPattern
 - rectilinear
 - rectilinear-grid
 - honeycomb
 - Rectilinear
 - Rectilinear grid
 - Honeycomb
 * Mode : Avancé


## support_material_interface_pattern
### Pattern
 * Full label : Support interface pattern
 * Groupe : support
Pattern for interface layers.
#### InfillPattern
 - rectilinear
 - monotonic
 - concentric
 - concentricgapfill
 - hilbertcurve
 - sawtooth
 - smooth
 - Rectilinear
 - Monotonic
 - Concentric
 - Concentric (filled)
 - Hilbert Curve
 - Sawtooth
 - Ironing
 * Mode : Avancé

    
## support_material_spacing
### Pattern spacing
 * Groupe : support
Spacing between support material lines.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 2.5

## support_material_speed
### Default
 * Full label : Support speed
 * Groupe : support
Speed for printing support material.
 * unit : mm/s
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 60

## support_material_synchronize_layers
### Synchronize with object layers
 * Groupe : support
Synchronize support layers with the object print layers. This is useful  with multi-material printers, where the extruder switch is expensive.
 * Mode : Expert


## support_material_threshold
### Overhang threshold
 * Groupe : support
Support material will not be generated for overhangs whose slope angle  (90° = vertical) is above the given threshold. In other words, this value  represent the most horizontal slope (measured from the horizontal plane)  that you can print without support material. Set to zero for automatic detection  (recommended).
 * unit : °
 * Valeur min :  0
 * Valeur max :  90
 * Mode : Avancé
* Valeur par défaut : 0

## support_material_with_sheath
### With sheath around the support
 * Groupe : support
Add a sheath (a single perimeter line) around the base support. This makes  the support more reliable, but also more difficult to remove.
 * Mode : Expert
* Valeur par défaut : true

## temperature
### Other layers
 * Full label : Temperature
 * Groupe : filament
Extruder nozzle temperature for layers after the first one. Set this to zero to disable  temperature control commands in the output G-code.
 * unit : °C
 * Full label : Nozzle temperature
 * Valeur min :  0
 * Valeur max :  max_temp
* Valeur par défaut :  200

## print_temperature
### Temperature
 * Groupe : filament
Override the temperature of the extruder. Avoid making too many changes, it won't stop for cooling/heating. 0 to disable. May only work on Height range modifiers.
 * Mode : Expert
* Valeur par défaut : 0

## print_retract_lift
### Z-lift override
 * Groupe : filament
Set the new lift-z value for this override. 0 will disable the z-lift. -& to disable. May only work on Height range modifiers.
 * unit : mm
 * Mode : Expert
* Valeur par défaut : -1

## thin_perimeters
### Overlapping external perimeter
 * Full label : Overlapping external perimeter
 * Groupe : Perimètre
Allow outermost perimeter to overlap itself to avoid the use of thin walls. Note that flow isn't adjusted and so this will result in over-extruding and undefined behavior.
 * Mode : Expert
* Valeur par défaut : true

## thin_perimeters_all
### Overlapping all perimeters
 * Full label : Overlapping all perimeters
 * Groupe : Perimètre
Allow all perimeters to overlap, instead of just external ones.
 * Mode : Expert


## thin_walls
### Thin walls
 * Full label : Thin walls
 * Groupe : Perimètre
Detect single-width walls (parts where two extrusions don't fit and we need to collapse them into a single trace). If unchecked, Slic3r may try to fit perimeters where it's not possible, creating some overlap leading to over-extrusion.
 * Mode : Avancé
* Valeur par défaut : true

## thin_walls_min_width
### Min width
 * Full label : Thin walls min width
 * Groupe : Perimètre
Minimum width for the extrusion to be extruded (widths lower than the nozzle diameter will be over-extruded at the nozzle diameter). If expressed as percentage (for example 110%) it will be computed over nozzle diameter. The default behavior of PrusaSlicer is with a 33% value. Put 100% to avoid any sort of over-extrusion.
 * Ratio over :  "nozzle_diameter"
 * Mode : Expert
 * Valeur min :  0
* Valeur par défaut : 33 %

## thin_walls_overlap
### Overlap
 * Full label : Thin wall overlap
 * Groupe : Perimètre
Overlap between the thin wall and the perimeters. Can be a % of the external perimeter width (default 50%)
 * Ratio over :  "external_perimeter_extrusion_width"
 * Mode : Expert
 * Valeur min :  0
* Valeur par défaut : 50 %

## thin_walls_merge
### Merging with perimeters
 * Full label : Thin wall merge
 * Groupe : Perimètre
Allow the external perimeter to merge the thin walls in the path.   You can deactivate this if you are using thin walls as a custom support, to reduce adhesion a little.
 * Mode : Expert
* Valeur par défaut : true

## thin_walls_speed
### Thin walls
 * Full label : Thin walls speed
 * Groupe : Vitesse
Speed for thin walls (external extrusions that are alone because the obect is too thin at these places).
 * unit : mm/s
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 30

## threads
### Threads
Threads are used to parallelize long-running tasks. Optimal threads number  is slightly above the number of available cores/processors.
 * Mode Readonly : true
 * Valeur min :  1

## time_estimation_compensation
### Time estimation compensation
 * Groupe : firmware
This setting allows you to modify the time estimation by a % amount. As Slic3r only uses the Marlin algorithm, it's not precise enough if another firmware is used.
 * Mode : Avancé
 * unit : %
 * Valeur min :  0
* Valeur par défaut : 100

## toolchange_gcode
### Tool change G-code
 * Groupe : customgcode
This custom code is inserted at every extruder change. If you don't leave this empty, you are expected to take care of the toolchange yourself - Slic3r will not output any other G-code to change the filament. You can use placeholder variables for all Slic3r settings as well as [previous_extruder] and [next_extruder], so e.g. the standard toolchange command can be scripted as T[next_extruder].!! Warning !!: if any character is written here, Slic3r won't output any toochange command by itself.
 * Mode : Expert


## tool_name
### Tool name
 * Groupe : extruders
Only used for Klipper, where you can name the extruder. If not set, will be 'extruderX' with 'X' replaced by the extruder number.
 * Mode : Expert


## top_infill_extrusion_width
### Top solid infill
 * Groupe : width
Set this to a non-zero value to set a manual extrusion width for infill for top surfaces. You may want to use thinner extrudates to fill all narrow regions and get a smoother finish. If left as zero, default extrusion width will be used if set, otherwise nozzle diameter will be used. If expressed as percentage (for example 110%) it will be computed over nozzle diameter.

You can set either 'Spacing', or 'Width' the other will be calculated, using default layer height.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## top_infill_extrusion_spacing
### Top solid spacing
 * Groupe : width
Like Top solid infill width but spacing is the distance between two lines (as they overlap a bit, it's not the same).

You can set either 'Spacing', or 'Width' the other will be calculated, using default layer height.
 * unit : mm or %
 * Ratio over :  "nozzle_diameter"
 * Valeur min :  0
 * Valeur max :  1000
 * Mode : Avancé
* Valeur par défaut : 0

## top_solid_infill_speed
### Top solid
 * Full label : Top solid speed
 * Groupe : Vitesse
Speed for printing top solid layers (it only applies to the uppermost  external layers and not to their internal solid layers). You may want  to slow down this to get a nicer surface finish. This can be expressed  as a percentage (for example: 80%) over the solid infill speed above.  Set to zero for auto.
 * unit : mm/s or %
 * Ratio over :  "solid_infill_speed"
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 15

## top_solid_layers
    //TRN To be shown in Print Settings "Top solid layers### Top
 * Full label : Top layers
 * Groupe : Perimètre
Number of solid layers to generate on top surfaces.
 * Full label : Top solid layers
 * Valeur min :  0


## top_solid_min_thickness
    //TRN To be shown in Print Settings "Top solid layers### Top
 * Groupe : Perimètre
The number of top solid layers is increased above top_solid_layers if necessary to satisfy    minimum thickness of top shell. This is useful to prevent pillowing effect when printing with variable layer height.
 * Full label : Minimum top shell thickness
 * unit : mm
 * Valeur min :  0
* Valeur par défaut : 0.

## travel_speed
### Travel
 * Full label : Travel speed
 * Groupe : Vitesse
Speed for travel moves (jumps between distant extrusion points).
 * unit : mm/s
 * Aliases :  "travel_feed_rate"
 * Valeur min :  1
 * Mode : Avancé
* Valeur par défaut : 130

## travel_speed_z
### Z Travel
 * Full label : Z travel speed
 * Groupe : Vitesse
Speed for movements along the Z axis.\nWhen set to zero, this value    is ignored and regular travel speed is used instead.
 * unit : mm/s
 * Aliases :  "travel_feed_rate_z"
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0.

## use_firmware_retraction
### Use firmware retraction
 * Groupe : general
This experimental setting uses G10 and G11 commands to have the firmware  handle the retraction. This is only supported in recent Marlin.
 * Mode : Expert


## use_relative_e_distances
### Use relative E distances
 * Groupe : general
If your firmware requires relative E values, check this,  otherwise leave it unchecked. Most firmwares use absolute values.
 * Mode : Expert


## use_volumetric_e
### Use volumetric E
 * Groupe : general
This experimental setting uses outputs the E values in cubic millimeters  instead of linear millimeters. If your firmware doesn't already know  filament diameter(s), you can put commands like 'M200 D[filament_diameter_0] T0'  in your start G-code in order to turn volumetric mode on and use the filament  diameter associated to the filament selected in Slic3r. This is only supported  in recent Marlin.
 * Mode : Expert


## variable_layer_height
### Enable variable layer height feature
 * Groupe : general
Some printers or printer setups may have difficulties printing  with a variable layer height. Enabled by default.
 * Mode : Expert
* Valeur par défaut : true

## wipe
### Wipe while retracting
 * Groupe : general
This flag will move the nozzle while retracting to minimize the possible blob  on leaky extruders.
 * Mode : Avancé
* Valeur par défaut : false

## wipe_tower
### Enable
 * Full label : Enable wipe tower
 * Groupe : general
Multi material printers may need to prime or purge extruders on tool changes.  Extrude the excess material into the wipe tower.
 * Mode : Avancé

## wiping_volumes_extruders
### Purging volumes - load/unload volumes
This vector saves required volumes to change from/to each tool used on the    wipe tower. These values are used to simplify creation of the full purging    volumes below. 

## wiping_volumes_matrix
### Purging volumes - matrix
This matrix describes volumes (in cubic milimetres) required to purge the new filament on the wipe tower for any given pair of tools. 

## wipe_advanced
### Enable advanced wiping volume
Allow Slic3r to compute the purge volume via smart computations. Use the pigment% of each filament and following parameters
 * Mode : Expert

## wipe_advanced_nozzle_melted_volume
### Nozzle volume
The volume of melted plastic inside your nozzle. Used by 'advanced wiping'.
 * unit : mm3
 * Mode : Expert
* Valeur par défaut : 120

## filament_wipe_advanced_pigment
### Pigment percentage
The pigment % for this filament (bewteen 0 and 1, 1=100%). 0 for translucent/natural, 0.2-0.5 for white and 1 for black.
 * Mode : Expert
 * Valeur min :  0
 * Valeur max :  1
* Valeur par défaut : 0.5

## wipe_advanced_multiplier
### Multiplier
 * Full label : Auto-wipe multiplier
The volume multiplier used to compute the final volume to extrude by the algorithm.
 * unit : mm3
 * Mode : Expert
* Valeur par défaut : 60

## wipe_advanced_algo
### Algorithm
 * Full label : Auto-wipe algorithm
Algorithm for the advanced wipe.

Linear :  volume = nozzle + volume_mult  * (pigmentBefore-pigmentAfter)
Quadratic: volume = nozzle + volume_mult  * (pigmentBefore-pigmentAfter)+ volume_mult  * (pigmentBefore-pigmentAfter)^3
Hyperbola: volume = nozzle + volume_mult  * (0.5+pigmentBefore) / (0.5+pigmentAfter)
#### WipeAlgo
 - Linear
 - Quadratric
 - Hyperbola
 * Mode : Expert

## wipe_tower_brim
### Wipe tower brim width
Width of the brim for the wipe tower. Can be in mm or in % of the (assumed) only one nozzle diameter.
 * Ratio over :  "nozzle_diameter"
 * Mode : Avancé
* Valeur par défaut : 150%

## wipe_tower_x
### X
 * Full label : Wipe tower X
X coordinate of the left front corner of a wipe tower
 * unit : mm
 * Mode : Avancé
* Valeur par défaut : 180.

## wipe_tower_y
### Y
 * Full label : Wipe tower Y
Y coordinate of the left front corner of a wipe tower
 * unit : mm
 * Mode : Avancé
* Valeur par défaut : 140.

## wipe_tower_width
### Width
 * Full label : Wipe tower Width
Width of a wipe tower
 * unit : mm
 * Mode : Avancé
* Valeur par défaut : 60.

## wipe_tower_rotation_angle
### Wipe tower rotation angle
Wipe tower rotation angle with respect to x-axis.
 * unit : °
 * Mode : Avancé
* Valeur par défaut : 0.

## wipe_into_infill
 * Groupe : wipe
### Wipe into this object's infill
Purging after toolchange will be done inside this object's infills.    This lowers the amount of waste but may result in longer print time  due to additional travel moves.


## wipe_into_objects
 * Groupe : wipe
### Wipe into this object
Object will be used to purge the nozzle after a toolchange to save material that would otherwise end up in the wipe tower and decrease print time. Colours of the objects will be mixed as a result.


## wipe_extra_perimeter
 * Groupe : extruders
### Extra Wipe for external perimeters
When the external perimeter loop extrusion ends, a wipe is done, going slightly inside the print. The number in this settting increases the wipe by moving the nozzle along the loop again before the final wipe.
 * Valeur min :  0
 * unit : mm
 * Mode : Avancé
* Valeur par défaut : 0.f

## wipe_tower_bridging
### Maximal bridging distance
Maximal distance between supports on sparse infill sections. 
 * unit : mm
 * Mode : Avancé
* Valeur par défaut : 10.

## xy_size_compensation
### Outer
 * Full label : Outer XY size compensation
 * Groupe : slicing
The object will be grown/shrunk in the XY plane by the configured value (negative = inwards, positive = outwards). This might be useful for fine-tuning sizes.
This one only applies to the 'exterior' shell of the object.
!!! it's recommended you put the same value into the 'Inner XY size compensation', unless you are sure you don't have horizontal holes. !!! 
 * unit : mm
 * Mode : Expert
* Valeur par défaut : 0

## xy_inner_size_compensation
### Inner
 * Full label : Inner XY size compensation
 * Groupe : slicing
The object will be grown/shrunk in the XY plane by the configured value (negative = inwards, positive = outwards). This might be useful for fine-tuning sizes.
This one only applies to the 'inner' shell of the object (!!! horizontal holes break the shell !!!)
 * unit : mm
 * Mode : Expert
* Valeur par défaut : 0

## hole_size_compensation
### XY compensation
 * Full label : XY holes compensation
 * Groupe : slicing
The convex holes will be grown / shrunk in the XY plane by the configured value (negative = inwards, positive = outwards, should be negative as the holes are always a bit smaller irl). This might be useful for fine-tuning hole sizes.

This setting behaves the same as 'Inner XY size compensation' but only for convex shapes. It's added to 'Inner XY size compensation', it does not replace it. 
 * unit : mm
 * Mode : Expert
* Valeur par défaut : 0

## hole_size_threshold
### Threshold
 * Full label : XY holes threshold
 * Groupe : slicing
Maximum area for the hole where the hole_size_compensation will apply fully.     After that, it will decrease down to 0 for four times this area.     Set to 0 to let the hole_size_compensation apply fully for all detected holes
 * unit : mm²
 * Mode : Expert
* Valeur par défaut : 100

## hole_to_polyhole
### Convert round holes to polyholes
 * Full label : Convert round holes to polyholes
 * Groupe : slicing
Search for almost-circular holes that span more than one layer and convert the geometry to polyholes. Use the nozzle size and the (biggest) diameter to compute the polyhole.\nSee http://hydraraptor.blogspot.com/2011/02/polyholes.html
 * Mode : Avancé


## hole_to_polyhole_threshold
### Roundness margin
 * Full label : Polyhole detection margin
 * Groupe : slicing
Maximum defection of a point to the estimated radius of the circle.  \nAs cylinders are often exported as triangles of varying size, points may not be on the circle circumference.   This setting allows you some leway to broaden the detection.  \nIn mm or in % of the radius.
 * unit : mm²
 * Mode : Expert
* Valeur par défaut : 0.01

## z_offset
### Z offset
 * Groupe : general
This value will be added (or subtracted) from all the Z coordinates  in the output G-code. It is used to compensate for bad Z endstop position:  for example, if your endstop zero actually leaves the nozzle 0.3mm far  from the print bed, set this to -0.3 (or fix your endstop).
 * unit : mm
 * Mode : Expert
* Valeur par défaut : 0

## z_step
### Z full step
Set this to the height moved when your Z motor (or equivalent) turns one step.  If your motor needs 200 steps to move your head/plater by 1mm, this field should be 1/200 = 0.005.  \nNote that the gcode will write the z values with 6 digits after the dot if z_step is set (it's 3 digits if it's disabled).  

Put 0 to disable.
 * unit : mm
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0.005


# extruder option

nozzle_diameter
min_layer_height
max_layer_height
extruder_offset
extruder_fan_offset
extruder_temperature_offset
gcode_precision_e
tool_name
retract_length
retract_lift
retract_lift_above
retract_lift_below
retract_lift_first_layer
retract_lift_top
retract_speed
deretract_speed
retract_before_wipe
retract_restart_extra
retract_before_travel
wipe
wipe_extra_perimeter
retract_layer_change
retract_length_toolchange
retract_restart_extra_toolchange
extruder_colour
default_filament_profile   

# extruder retract_keys 
deretract_speed
retract_before_travel
retract_before_wipe
retract_layer_change
retract_length
retract_lift
retract_lift_above
retract_lift_below
retract_restart_extra
retract_speed
wipe
wipe_extra_perimeter


# Milling Printer settings

## milling_cutter
### Milling cutter
 * Groupe : general
The milling cutter to use (unless more specific extruder settings are specified). 
 * Valeur min :  0  // 0 = inherit defaults
 - default  // override label for item 0
 - 1
 - 2
 - 3
 - 4
 - 5
 - 6
 - 7
 - 8
 - 9

## milling_diameter
### Milling diameter
 * Groupe : milling_extruders
This is the diameter of your cutting tool.
 * unit : mm
 * Mode : Avancé
* Valeur par défaut : 3.14

## milling_offset
### Tool offset
 * Groupe : extruders
If your firmware doesn't handle the extruder displacement you need the G-code to take it into account. This option lets you specify the displacement of each extruder with respect to the first one. It expects positive coordinates (they will be subtracted from the XY coordinate).
 * unit : mm
 * Mode : Avancé
 

## milling_z_offset
### Tool z offset
 * Groupe : extruders
.
 * unit : mm
 * Mode : Avancé
* Valeur par défaut : 0

## milling_z_lift
### Tool z lift
 * Groupe : extruders
Amount of lift for travel.
 * unit : mm
 * Mode : Avancé
* Valeur par défaut : 2

## milling_toolchange_start_gcode
### G-Code to switch to this toolhead
 * Groupe : milling_extruders
Put here the gcode to change the toolhead (called after the g-code T[next_extruder]). You have access to [next_extruder] and [previous_extruder]. next_extruder is the 'extruder number' of the new milling tool, it's equal to the index (begining at 0) of the milling tool plus the number of extruders. previous_extruder is the 'extruder number' of the previous tool, it may be a normal extruder, if it's below the number of extruders. The number of extruder is available at [extruder] and the number of milling tool is available at [milling_cutter].
 * Mode : Avancé


## milling_toolchange_end_gcode
### G-Code to switch from this toolhead
 * Groupe : milling_extruders
Enter here the gcode to end the toolhead action, like stopping the spindle. You have access to [next_extruder] and [previous_extruder]. previous_extruder is the 'extruder number' of the current milling tool, it's equal to the index (begining at 0) of the milling tool plus the number of extruders. next_extruder is the 'extruder number' of the next tool, it may be a normal extruder, if it's below the number of extruders. The number of extruder is available at [extruder]and the number of milling tool is available at [milling_cutter].
 * Mode : Avancé


## milling_post_process
### Milling post-processing
 * Groupe : milling
If activated, at the end of each layer, the printer will switch to a milling head and mill the external perimeters.\nYou should set the 'Milling extra XY size' to a value high enough to have enough plastic to mill. Also, be sure that your piece is firmly glued to the bed.
 * Mode : Simple


## milling_extra_size
### Milling extra XY size
 * Groupe : milling
This increases the size of the object by a certain amount to have enough plastic to mill. You can set a number of mm or a percentage of the calculated optimal extra width (from flow calculation).
 * unit : mm or %
 * Ratio over :  "computed_on_the_fly"
 * Mode : Avancé
* Valeur par défaut : 150 %

## milling_after_z
### Milling only after
 * Groupe : milling
This setting restricts the post-process milling to a certain height, to avoid milling the bed. It can be a mm or a % of the first layer height (so it can depend on the object).
 * unit : mm or %
 * Ratio over :  "first_layer_height"
 * Mode : Avancé
* Valeur par défaut : 200 %

## milling_speed
### Milling Speed
 * Groupe : milling
Speed for milling tool.
 * unit : mm/s
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 30


# SLA Printer settings

## display_width
### Display width
Width of the display
 * Valeur min :  1
* Valeur par défaut : 120.

## display_height
### Display height
Height of the display
 * Valeur min :  1
* Valeur par défaut : 68.

## display_pixels_x
 * Full label : Number of pixels in
### X
Number of pixels in X
 * Valeur min :  100
* Valeur par défaut : 2560

## display_pixels_y
### Y
Number of pixels in Y
 * Valeur min :  100
* Valeur par défaut : 1440

## display_mirror_x
 * Full label : Display horizontal mirroring
### Mirror horizontally
Enable horizontal mirroring of output images
 * Mode : Expert
* Valeur par défaut : true

## display_mirror_y
 * Full label : Display vertical mirroring
### Mirror vertically
Enable vertical mirroring of output images
 * Mode : Expert


## display_orientation
### Display orientation
Set the actual LCD display orientation inside the SLA printer. Portrait mode will flip the meaning of display width and height parameters and the output images will be rotated by 90 degrees.
#### SLADisplayOrientation
 - landscape
 - portrait
 - Landscape
 - Portrait
 * Mode : Expert



## fast_tilt_time
### Fast
 * Full label : Fast tilt
Time of the fast tilt
 * unit : s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 5.

## slow_tilt_time
### Slow
 * Full label : Slow tilt
Time of the slow tilt
 * unit : s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 8.

## area_fill
### Area fill
The percentage of the bed area. \nIf the print area exceeds the specified value, \nthen a slow tilt will be used, otherwise - a fast tilt
 * unit : %
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 50.

## relative_correction
### Printer scaling correction
 * Full label : Printer scaling correction
Printer scaling correction
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut :  { 1., 1. } 

## absolute_correction
### Printer absolute correction
 * Full label : Printer absolute correction
Will inflate or deflate the sliced 2D polygons according  to the sign of the correction.
 * Mode : Expert
* Valeur par défaut : 0.0
    
## elephant_foot_min_width
### minimum width
 * Groupe : slicing
Minimum width of features to maintain when doing the first layer compensation.
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0.2

## gamma_correction
### Printer gamma correction
 * Full label : Printer gamma correction
This will apply a gamma correction to the rasterized 2D  polygons. A gamma value of zero means thresholding with  the threshold in the middle. This behaviour eliminates  antialiasing without losing holes in polygons.
 * Valeur min :  0
 * Valeur max :  1
 * Mode : Expert
* Valeur par défaut : 1.0


# SLA Material settings.
## material_type
### SLA material type
SLA material type
 - Tough
 - Flexible
 - Casting
 - Dental
 - Heat-resistant


## initial_layer_height
### Initial layer height
Initial layer height
 * unit : mm
 * Valeur min :  0


## bottle_volume
### Bottle volume
Bottle volume
 * unit : ml
 * Valeur min :  50
* Valeur par défaut : 1000.0

## bottle_weight
### Bottle weight
Bottle weight
 * unit : kg
 * Valeur min :  0
* Valeur par défaut : 1.0

## material_density
### Density
Density
 * unit : g/ml
 * Valeur min :  0
* Valeur par défaut : 1.0

## bottle_cost
### Cost
Cost
 * unit : money/bottle
 * Valeur min :  0
* Valeur par défaut : 0.0

## faded_layers
### Faded layers
Number of the layers needed for the exposure time fade from initial exposure time to the exposure time
 * Valeur min :  3
 * Valeur max :  20
 * Mode : Expert
* Valeur par défaut : 10

## min_exposure_time
### Minimum exposure time
Minimum exposure time
 * unit : s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0

## max_exposure_time
### Maximum exposure time
Maximum exposure time
 * unit : s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 100

## exposure_time
### Exposure time
Exposure time
 * unit : s
 * Valeur min :  0


## min_initial_exposure_time
### Minimum initial exposure time
Minimum initial exposure time
 * unit : s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 0

## max_initial_exposure_time
### Maximum initial exposure time
Maximum initial exposure time
 * unit : s
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 150

## initial_exposure_time
### Initial exposure time
Initial exposure time
 * unit : s
 * Valeur min :  0
* Valeur par défaut : 15

## material_correction
### Correction for expansion
Correction for expansion
 * Valeur min :  0
 * Mode : Expert

## material_notes
### SLA print material notes
You can put your notes regarding the SLA print material here.
 * Mode : Avancé


## material_vendor
* Valeur par défaut : Unknown


## default_sla_material_profile
### Default SLA material profile
Default print profile associated with the current printer profile.  On selection of the current printer profile, this print profile will be activated.


## sla_material_settings_id



## default_sla_print_profile
### Default SLA material profile
Default print profile associated with the current printer profile.  On selection of the current printer profile, this print profile will be activated.


## sla_print_settings_id


## supports_enable
### Generate supports
 * Groupe : support
Generate supports for the models
 * Mode : Simple
* Valeur par défaut : true

## support_head_front_diameter
### Pinhead front diameter
 * Groupe : support
Diameter of the pointing side of the head
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 0.4

## support_head_penetration
### Head penetration
 * Groupe : support
How much the pinhead has to penetrate the model surface
 * unit : mm
 * Mode : Avancé
 * Valeur min :  0
* Valeur par défaut : 0.2

## support_head_width
### Pinhead width
 * Groupe : support
Width from the back sphere center to the front sphere center
 * unit : mm
 * Valeur min :  0
 * Valeur max :  20
 * Mode : Avancé
* Valeur par défaut : 1.0

## support_pillar_diameter
### Pillar diameter
 * Groupe : support
Diameter in mm of the support pillars
 * unit : mm
 * Valeur min :  0
 * Valeur max :  15
 * Mode : Simple
* Valeur par défaut : 1.0

## support_small_pillar_diameter_percent
### Small pillar diameter percent
 * Groupe : support
The percentage of smaller pillars compared to the normal pillar diameter    which are used in problematic areas where a normal pilla cannot fit.
 * unit : %
 * Valeur min :  1
 * Valeur max :  100
 * Mode : Expert
* Valeur par défaut : 50
    
## support_max_bridges_on_pillar
### Max bridges on a pillar
Maximum number of bridges that can be placed on a pillar. Bridges hold support point pinheads and connect to pillars as small branches.
 * Valeur min :  0
 * Valeur max :  50
 * Mode : Expert


## support_pillar_connection_mode
### Pillar connection mode
Controls the bridge type between two neighboring pillars. Can be zig-zag, cross (double zig-zag) or dynamic which will automatically switch between the first two depending on the distance of the two pillars.
#### SLAPillarConnectionMode
 - Zig-Zag
 - Cross
 - Dynamic
 * Mode : Avancé


## support_buildplate_only
### Support on build plate only
 * Groupe : support
Only create support if it lies on a build plate. Don't create support on a print.
 * Mode : Simple


## support_pillar_widening_factor
### Pillar widening factor
 * Groupe : support
Merging bridges or pillars into other pillars can    increase the radius. Zero means no increase, one means    full increase.
 * Valeur min :  0
 * Valeur max :  1
 * Mode : Expert
* Valeur par défaut : 0.0

## support_base_diameter
### Support base diameter
 * Groupe : support
Diameter in mm of the pillar base
 * unit : mm
 * Valeur min :  0
 * Valeur max :  30
 * Mode : Avancé
* Valeur par défaut : 4.0

## support_base_height
### Support base height
 * Groupe : support
The height of the pillar base cone
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 1.0

## support_base_safety_distance
### Support base safety distance
 * Groupe : support
The minimum distance of the pillar base from the model in mm. Makes sense in zero elevation mode where a gap according to this parameter is inserted between the model and the pad.
 * unit : mm
 * Valeur min :  0
 * Valeur max :  10
 * Mode : Expert
* Valeur par défaut : 1

## support_critical_angle
### Critical angle
 * Groupe : support
The default angle for connecting support sticks and junctions.
 * unit : °
 * Valeur min :  0
 * Valeur max :  90
 * Mode : Expert
* Valeur par défaut : 45

## support_max_bridge_length
### Max bridge length
 * Groupe : support
The max length of a bridge
 * unit : mm
 * Valeur min :  0
 * Mode : Avancé
* Valeur par défaut : 15.0

## support_max_pillar_link_distance
### Max pillar linking distance
 * Groupe : support
The max distance of two pillars to get linked with each other. A zero value will prohibit pillar cascading.
 * unit : mm
 * Valeur min :  0   // 0 means no linking
 * Mode : Avancé
* Valeur par défaut : 10.0

## support_object_elevation
### Object elevation
 * Groupe : support
How much the supports should lift up the supported object.    If this value is zero, the bottom of the model geometry    will be considered as part of the pad.   If 'Pad around object' is enabled, this value is ignored.
 * unit : mm
 * Valeur min :  0
 * Valeur max :  150 // This is the max height of print on SL1
 * Mode : Avancé
* Valeur par défaut : 5.0

## support_points_density_relative
### Support points density
 * Groupe : support
This is a relative measure of support points density.
 * unit : %
 * Valeur min :  0
* Valeur par défaut : 100

## support_points_minimal_distance
### Minimal distance of the support points
 * Groupe : support
No support points will be placed closer than this threshold.
 * unit : mm
 * Valeur min :  0
* Valeur par défaut : 1.f

## pad_enable
### Use pad
 * Groupe : pad
Add a pad underneath the supported model
 * Mode : Simple
* Valeur par défaut : true

## pad_wall_thickness
### Pad wall thickness
 * Groupe : pad
 The thickness of the pad and its optional cavity walls.
 * unit : mm
 * Valeur min :  0
 * Valeur max :  30
 * Mode : Simple
* Valeur par défaut : 2.0

## pad_wall_height
### Pad wall height
Defines the pad cavity depth. Set to zero to disable the cavity.    Be careful when enabling this feature, as some resins may    produce an extreme suction effect inside the cavity,    which makes peeling the print off the vat foil difficult.
 * Groupe : pad
 * unit : mm
 * Valeur min :  0
 * Valeur max :  30
 * Mode : Expert
* Valeur par défaut : 0.
    
## pad_brim_size
### Pad brim size
How far should the pad extend around the contained geometry
 * Groupe : pad
 * unit : mm
 * Valeur min :  0
 * Valeur max :  30
 * Mode : Avancé
* Valeur par défaut : 1.6

## pad_max_merge_distance
### Max merge distance
 * Groupe : pad
 Some objects can get along with a few smaller pads  instead of a single big one. This parameter defines  how far the center of two smaller pads should be. If they are closer, they will get merged into one pad.
 * unit : mm
 * Valeur min :  0
 * Mode : Expert
* Valeur par défaut : 50.0

// This is disabled on the UI. I hope it will never be enabled.
//## pad_edge_radius
//### Pad edge radius
// * Groupe : pad
//// 
// * unit : mm
// * Valeur min :  0
// * Mode : Avancé
//* Valeur par défaut : 1.0

## pad_wall_slope
### Pad wall slope
 * Groupe : pad
The slope of the pad wall relative to the bed plane.    90 degrees means straight walls.
 * unit : °
 * Valeur min :  45
 * Valeur max :  90
 * Mode : Avancé
* Valeur par défaut : 90.0

## pad_around_object
### Pad around object
 * Groupe : pad
Create pad around object and ignore the support elevation
 * Mode : Simple
    
## pad_around_object_everywhere
### Pad around object everywhere
 * Groupe : pad
Force pad around object everywhere
 * Mode : Simple


## pad_object_gap
### Pad object gap
 * Groupe : pad
The gap between the object bottom and the generated  pad in zero elevation mode.
 * unit : mm
 * Valeur min :  0
 * Valeur max :  10
 * Mode : Expert
* Valeur par défaut : 1

## pad_object_connector_stride
### Pad object connector stride
 * Groupe : pad
Distance between two connector sticks which connect the object and the generated pad.
 * unit : mm
 * Valeur min :  0
 * Mode : Expert

## pad_object_connector_width
### Pad object connector width
 * Groupe : pad
Width of the connector sticks which connect the object and the generated pad.
 * unit : mm
 * Valeur min :  0
 * Mode : Expert

## pad_object_connector_penetration
### Pad object connector penetration
 * Groupe : pad
How much should the tiny connectors penetrate into the model body.
 * unit : mm
 * Valeur min :  0
 * Mode : Expert

    
## hollowing_enable
### Enable hollowing
 * Groupe : hollowing
Hollow out a model to have an empty interior
 * Mode : Simple

    
## hollowing_min_thickness
### Wall thickness
 * Groupe : hollowing
Minimum wall thickness of a hollowed model.
 * unit : mm
 * Valeur min :  1
 * Valeur max :  10
 * Mode : Simple
* Valeur par défaut : 3.
    
## hollowing_quality
### Accuracy
 * Groupe : hollowing
Performance vs accuracy of calculation. Lower values may produce unwanted artifacts.
 * Valeur min :  0
 * Valeur max :  1
 * Mode : Expert

    
## hollowing_closing_distance
### Closing distance
 * Groupe : hollowing
Hollowing is done in two steps: first, an imaginary interior is calculated deeper (offset plus the closing distance) in the object and then it's inflated back to the specified offset. A greater closing distance makes the interior more rounded. At zero, the interior will resemble the exterior the most.
 * unit : mm
 * Valeur min :  0
 * Valeur max :  10
 * Mode : Expert
* Valeur par défaut : 2.0


## output_format
### Output Format
Select the output format for this printer.
#### OutputFormat
 - Masked CWS
 - Prusa SL1
 * Mode : Avancé // output_format should be preconfigured in profiles


# Actions

## export_obj
### Export OBJ
Export the model(s) as OBJ.


## export_svg
### Export SVG
Slice the model and export solid slices as SVG.


## export_sla
### Export SLA
Slice the model and export SLA printing layers as PNG.


## export_3mf
### Export 3MF
Export the model(s) as 3MF.


## export_amf
### Export AMF
Export the model(s) as AMF.


## export_stl
### Export STL
Export the model(s) as STL.


## export_gcode
### Export G-code
Slice the model and export toolpaths as G-code.


## gcodeviewer
### G-code viewer
Visualize an already sliced and saved G-code


## slice
### Slice
Slice the model as FFF or SLA based on the printer_technology configuration value.


## help
### Help
Show this help.


## help_fff
### Help (FFF options)
Show the full list of print/G-code configuration options.


## help_sla
### Help (SLA options)
Show the full list of SLA print configuration options.


## info
### Output Model Info
Write information about the model to the console.

## save
### Save config file
Save configuration to the specified file.


# Transform options:
## align_xy
### Align XY
Align the model to the given point.

## cut
### Cut
Cut model at the given Z.
* Valeur par défaut : 0

## cut_grid
### Cut
Cut model in the XY plane into tiles of the specified max size.

## cut_x
### Cut
Cut model at the given X.
* Valeur par défaut : 0)
* Valeur par défaut : 0

## cut_y
### Cut
Cut model at the given Y.
* Valeur par défaut : 0)
* Valeur par défaut : 0

## center
### Center
Center the print around the given center.)

## dont_arrange
### Don't arrange
Do not rearrange the given models before merging and keep their original XY coordinates.

## duplicate
### Duplicate
Multiply copies by this factor.
 * Valeur min :  1

## duplicate_grid
### Duplicate by grid
Multiply copies by creating a grid.

## merge
### Merge
Arrange the supplied models in a plate and merge them in a single model in order to perform actions once.

## repair
### Repair
Try to repair any non-manifold meshes (this option is implicitly added whenever we need to slice the model to perform the requested action).

## rotate
### Rotate
Rotation angle around the Z axis in degrees.
* Valeur par défaut : 0

## rotate_x
### Rotate around X
Rotation angle around the X axis in degrees.
* Valeur par défaut : 0

## rotate_y
### Rotate around Y
Rotation angle around the Y axis in degrees.
* Valeur par défaut : 0

## scale
### Scale
Scaling factor or percentage.
* Valeur par défaut : 1

## split
### Split
Detect unconnected parts in the given model(s) and split them into separate objects.

## scale_to_fit
### Scale to Fit
Scale to fit the given volume.


## ignore_nonexistent_config
### Ignore non-existent config files
Do not fail if a file supplied to --load does not exist.

## load
### Load config file
Load configuration from the specified file. It can be used more than once to load options from multiple files.

## output
### Output File
The file where the output will be written (if not specified, it will be based on the input file).

## single_instance
### Single instance mode
If enabled, the command line arguments are sent to an existing instance of GUI Slic3r,    or an existing Slic3r window is activated.    Overrides the 'single_instance' configuration value from application preferences.


## autosave
### Autosave
Automatically export current configuration to the specified file.


## datadir
### Data directory
Load and store settings at the given directory. This is useful for maintaining different profiles or including configurations from a network storage.

## loglevel
### Logging level
Sets logging sensitivity. 0:fatal, 1:error, 2:warning, 3:info, 4:debug, 5:trace\n   For example. loglevel=2 logs fatal, error and warning level messages.
 * Valeur min :  0

## sw_renderer
### Render with a software renderer
Render with a software renderer. The bundled MESA software renderer is loaded instead of the default OpenGL driver.
 * Valeur min :  0
