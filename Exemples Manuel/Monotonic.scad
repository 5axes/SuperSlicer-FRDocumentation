// Monotonic text
//---------------------------
// Layer 0.2
// Nossle 0.4
//---------------------------
$fn=100;

difference() {
  Base();
  translate([0, 0, 0]) cube([6,30,2], center = true);
  translate([0, 0, 0]) cube([30,6,2], center = true);
  translate([16, 16, 0]) cylinder(h=10, d=6, center = true);
  translate([-16, 16, 0]) cylinder(h=10, d=8, center = true);
  translate([-16, -16, 0]) cylinder(h=10, d=10, center = true);
  translate([16, -16, 0]) cylinder(h=10, d=12, center = true);
}


module Base() {
    minkowski() {
    cube([30,30,1], center = true);
    cylinder(r=10,h=0.5, center = true);
    }
}
