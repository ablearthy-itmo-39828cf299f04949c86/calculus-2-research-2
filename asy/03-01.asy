import graph;
import geometry;

size(4cm);

defaultpen(fontsize(10pt));

xaxis("$y$",axis=YEquals(0),
  xmin=-3,
  xmax=3,
  Arrow);

yaxis("$z$",axis=XEquals(0),
  ymin=-3,
  ymax=3,
  Arrow);


draw((-2, -3) -- (-2, 3), dashed+opacity(0.5));
draw((-1, -3) -- (-1, 3), dashed+opacity(0.5));
draw((1, -3) -- (1, 3), dashed+opacity(0.5));
draw((2, -3) -- (2, 3), dashed+opacity(0.5));

draw((-3, 2) -- (3, 2), dashed+opacity(0.5));
draw((-3, 1) -- (3, 1), dashed+opacity(0.5));
draw((-3, -1) -- (3, -1), dashed+opacity(0.5));
draw((-3, -2) -- (3, -2), dashed+opacity(0.5));

pair A = (-1, 1);
pair B = (0, 0);
pair C = (-1, -1);
pair D = (1, -1);
pair F = (1, 1);

draw(F -- A -- B -- C -- D, linewidth(2pt));

real f(real x) {
	return sqrt(-x + 2);
}

path FE = graph(f, 1, 2, n=1000);

draw(FE, linewidth(2pt));
draw(reflect((1, 0), (2, 0))*FE, linewidth(2pt));

label("$A$", A+0.25*N+0.25*W);
label("$B$", B+0.25*N+0.25*E);
label("$C$", C+0.25*N+0.25*W);
label("$D$", D+0.25*S+0.25*E);
label("$F$", F+0.25*N+0.25*E);
label("$E$", (2, 0)+0.25*N+0.25*E);
