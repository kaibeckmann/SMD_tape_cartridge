module oldstl ()
{
  // rotate ([90,0,0]) import("files/SMD_Magazine_v1_-_15-1.5.stl", convexity=7);

  translate ([0,40,-30])rotate ([90,0,0])  import("Rail_60-5.stl", convexity=7);
}

//oldstl ();

module stencil() {
    
    polygon(points = [ [-29.5, 0], [-29.5,14], [-32.2,14], [-32.2, 16], [-30.2,18], 
                    [-26.8,18],  [-26.1,17.5],[-26.0,17.0],
                    [-26.0,3.5], [-25.8,2.9],[-25.0,2.5],
                    [32.5,2.5],
                    [33.1,2.7], [33.5,3.5],
                    [33.5,11.8],
                    [28,12.9],
                    [28,15.5],
                    [37.5,15.5],
                    [38.3,15.1],[38.5,14.5],
                    [38.5,0.0],
                    ]);
}

module rail(h=60) {
    rotate([90,0,90])
        linear_extrude(height = h, center = false, convexity = 10, slices = 20, scale = 1.0, $fn = 100) {
            stencil();
        }
}
rail(198);