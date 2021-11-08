
$fn = 100;

union() {
for (a =[0:60:360]){ rotate([0,0,a]) Bridge();}
cylinder(h = 6, r1 = 15, r2 = 15, center = false);
}

module Bridge(){
        translate([10, 0, 3])
            cube([6, 10, 3]);
}