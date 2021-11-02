
$fn = 100;

union() {
for (a =[0:60:360]){ rotate([0,0,a]) Bridge();}
cylinder(h = 10, r1 = 15, r2 = 15, center = false);
}

module Bridge(){
    difference() {
        cube([50, 10, 10]);
        translate([10, 0, 0])
            cube([30, 10, 5]);
    }
}