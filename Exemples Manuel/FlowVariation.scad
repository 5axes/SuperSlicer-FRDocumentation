//--------------------------------------------------------------------------------------
// Flow Variation
//---------------------------
// Nozzle 0.4
//---------------------------
// Cura Arachne
//---------------------------
// Layer = 0.2 (First layer 0.2)
// Nozzle = 0.4
//--------------------------------------------------------------------------------------

$fn = 50;

Nozzle = 0.4;
Width1=1.25*Nozzle;
Width2=0.75*Nozzle;

rotate([0,0,45]) union() {
    union() {
    translate([0,0,6]) cube([50,Width1,10], center = true);
    translate([50,0,6]) cube([50,Width2,10], center = true);
    translate([0,0,16]) cube([50,Width2,10], center = true);
    translate([50,0,16]) cube([50,Width1,10], center = true);        
    }
    translate([25,0,0.25]) minkowski()
        {
          cube([92,5,0.5], center = true);
          cylinder(r=5,h=0.5);
        }
    }
