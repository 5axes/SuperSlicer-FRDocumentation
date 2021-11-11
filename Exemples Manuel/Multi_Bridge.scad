
$fn = 200;
difference() {
    union() {
    for (a =[0:60:360]){ rotate([0,0,a]) Bridge();}
    cylinder(h = 10, r1 = 15, r2 = 15, center = false);
    }
    cylinder(h = 3, r1 = 10, r2 = 4, center = false);
}
module Bridge(){
    difference() {
        cube([50, 10, 10]);
        translate([10, -5, -1]) cube([30, 20, 6]);
    }
}