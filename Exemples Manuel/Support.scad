
$fn = 200;

minkowski()
{
    difference() {
    translate([0,0,-225]) rotate([90,0,0]) cylinder(h = 50, r1 = 250, r2 = 250, center = true);
    translate([0,0,-225]) rotate([90,0,0]) cylinder(h = 60, r1 = 245, r2 = 245, center = true);
    translate([0,0,-250]) cube([500,500,500], center = true);
    }
  cylinder(r=5,h=1);
}

