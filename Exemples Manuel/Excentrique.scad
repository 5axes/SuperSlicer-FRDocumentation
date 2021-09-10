$fn = 100;

difference() {
    cylinder(4, 52, 52, center=true);
    translate([30, 0, 0]) {
        cylinder(5, 18, 18, center=true);
    }
}