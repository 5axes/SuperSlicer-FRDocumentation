$fs = 0.3;
$fa = 1;

difference() {
rotate([-90, 0, 0]) {
	difference() {
		union() {
			cylinder(r=20, h=30);
			translate([-20, 0, 0]) {
				cube([40, 20, 30]);
			}
		}
		translate([0, 0, -1]) {
			cylinder(r=16, h=34);
		}   
        
	}
}
 		translate([0, 15, 0]) {
			cylinder(r=4, h=50);
		}   
    }