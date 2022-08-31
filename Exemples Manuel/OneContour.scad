//---------------------------
// Test d'une option bordure inétrieure
//---------------------------
$fn=200;

difference() {
Base();
translate([0,0,15]) cylinder(r=10,h=5, center = true);
}

module Base() {
    minkowski() {
    union() {    
    cube([30,30,30], center = true);
    translate([0,0,-15]) cube([30,30,20], center = false);    
    }
    cylinder(r=10,h=0.5, center = true);
    }
}
