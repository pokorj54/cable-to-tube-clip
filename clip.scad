use <pie_cutout.scad>

module clip(
    height, tube_radius, cable_radius, wall_thickness, tube_angle, cable_angle
    ){
    difference(){
        rotate([0,0,180-tube_angle/2]){
            pie_cutout_3d(h=height, r=tube_radius+wall_thickness, angle=tube_angle);
        }
        cylinder(h=height, r=tube_radius);
    }
    translate([tube_radius+cable_radius+wall_thickness,0 ,0]){
        difference(){
            rotate([0,0,180])
                pie_cutout_3d(h=height, r=cable_radius+wall_thickness, angle=cable_angle);
            cylinder(h=height, r=cable_radius);
        }
    }
}

clip(5, 8, 3, 4, 80, 80);