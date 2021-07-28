//---------------------------
// Test d'une option bordure inétrieure
//---------------------------
$fn=200;

union() {
difference() {
  Base();
  translate([0, 0, 0]) cylinder(h=10, d=30, center = true);
}

cylinder(h=1.5, d=10, center = true);
}

module Base() {
    minkowski() {
    cube([30,30,1], center = true);
    cylinder(r=10,h=0.5, center = true);
    }
}
