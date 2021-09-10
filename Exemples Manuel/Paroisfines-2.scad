union() {
    cube([10, 10, 2]);
    translate([10, 4, 0]) {
        cube([30, 2, 2]);
    }
    translate([30, 0, 0]) {
        cube([10, 10, 2]);
    }
}