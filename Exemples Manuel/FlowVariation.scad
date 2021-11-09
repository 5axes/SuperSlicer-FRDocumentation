
$fn = 200;
union() {
    union() {
    translate([0,0,0]) cube([100,0.4,10], center = true);
    translate([100,0,0]) cube([100,0.3,10], center = true);
    translate([0,0,10]) cube([100,0.3,10], center = true);
    translate([100,0,10]) cube([100,0.4,10], center = true);        
    }
    translate([150,0,5]) cube([1,10,20], center = true);
    translate([-50,0,5]) cube([1,10,20], center = true);
    }
