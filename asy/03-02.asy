import three;
import graph3;
import solids;

size(11cm);

real f(real x){
  if (x >= 1) {
    return sqrt(-x+2);
  }
  return 1;
}

path p=graph(f, -1, 2, n=30, operator ..);
path3 p3=path3(p, YZplane);


revolution a=revolution(p3,Y,0,360);

draw(surface(a), paleblue+opacity(0.5));

draw((0, 0, 0) -- (0, 2, 0), dashed);
draw((0, 2, 0) -- (0, 3, 0), Arrow3);
label("$y$", (0, 3, 0)+0.3*X);

draw((0, 0, 0) -- (0, 0, 1), dashed);
draw((0, 0, 1) -- (0, 0, 3), Arrow3);
label("$z$", (0.2, 0, 3));

draw((0, 0, 0) -- (1, 0, 0), dashed);
draw((1, 0, 0) -- (3, 0, 0), Arrow3);
label("$x$", (3, 0, 0)+0.2*Y);

draw((0, -1, 1) -- (0, 0, 0), dashed+linewidth(2pt));
draw((0, -1, -1) -- (0, 0, 0), dashed+linewidth(2pt));
draw((1, -1, 0) -- (0, 0, 0), dashed+linewidth(2pt));
draw((-1, -1, 0) -- (0, 0, 0), dashed+linewidth(2pt));
