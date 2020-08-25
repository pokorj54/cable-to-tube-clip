module pie_cutout(r, start_angle, end_angle) {
    R = r * sqrt(2) + 1;
    a0 = (4 * start_angle + 0 * end_angle) / 4;
    a1 = (3 * start_angle + 1 * end_angle) / 4;
    a2 = (2 * start_angle + 2 * end_angle) / 4;
    a3 = (1 * start_angle + 3 * end_angle) / 4;
    a4 = (0 * start_angle + 4 * end_angle) / 4;
    if(end_angle > start_angle)
        difference() {
        circle(r);
        polygon([
            [0,0],
            [R * cos(a0), R * sin(a0)],
            [R * cos(a1), R * sin(a1)],
            [R * cos(a2), R * sin(a2)],
            [R * cos(a3), R * sin(a3)],
            [R * cos(a4), R * sin(a4)],
            [0,0]
       ]);
    }
}

module pie_cutout_3d(h, r, angle){
    linear_extrude(h)
    pie_cutout(r, 0, angle);
}
