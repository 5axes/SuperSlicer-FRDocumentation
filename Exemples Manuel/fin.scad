$fn = 100;
union() {
    difference() {
        cylinder(10, 6, 6, center=true);
        cylinder(20, 4, 4, center=true);
    }
    translate([19, 0, 0]) cube([30, 2, 10], center=true);
}
