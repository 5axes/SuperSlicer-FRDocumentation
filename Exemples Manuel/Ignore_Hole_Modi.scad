//------------------------------------------
// Test d'une option bridge ou ignore hole
//------------------------------------------
$fn=200;

union() {
difference() {
  Base();
  translate([0, 0, -11]) cylinder(h=10, d=30, center = true);
  difference() {
      translate([0, 0, -10.8]) cylinder(h=10, d=30, center = true);
      translate([-19, 0, -10.8]) cube([30,30,30], center = true);
      translate([19, 0, -10.8]) cube([30,30,30], center = true);
    }
  cylinder(h=50, d=8, center = true);
}

}

module Base() {
    minkowski() {
    cube([30,30,30], center = true);
    cylinder(r=10,h=0.5, center = true);
    }
}
