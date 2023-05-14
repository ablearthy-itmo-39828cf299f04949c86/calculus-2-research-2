import graph;

size(11cm);

defaultpen(fontsize(10pt));

xaxis("$x$",axis=YEquals(0),
  xmin=-7.5,
  xmax=7.5,
  Arrow);

yaxis("$y$",axis=XEquals(0),
  ymin=-5,
  ymax=5,
  Arrow);

real f1(real x) {
  return log(abs(2 - exp(x)));
}

pair f2(real t) {
  return (-log(t), -log(5 - t));
}


draw(graph(f1, log(2)+0.0035, 5, n=1000, operator ..));
draw(graph(f2, 1/exp(7.5), 5 - 1/exp(5), n=1000));

draw((0.448017, -5) -- (1.438202, 5), red);
draw((-7.5, -0.6934212) -- (7.5, -2.178699), red);


label("$B = 2$", (1.5, -4));
label("$A = 5$", (4, -1.3));
