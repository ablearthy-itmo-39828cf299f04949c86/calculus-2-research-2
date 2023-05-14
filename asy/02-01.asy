import graph;

size(11cm);

defaultpen(fontsize(10pt));

xaxis("$x$",axis=YEquals(0),
  xmin=-3.5,
  xmax=12,
  Arrow);

yaxis("$y$",axis=XEquals(0),
  ymin=-3.5,
  ymax=5,
  Arrow);

pair f1(real t) {
  return (-log(t), -log(5 - t));
}

pair f2(real t) {
  return (-log(t), -log(10 - t));
}

pair f3(real t) {
  return (-log(t), -log(2 - t));
}


draw(graph(f1, 1/exp(12), 5 - 1/exp(5), n=1000));
draw(graph(f2, 1/exp(12), 10 - 1/exp(5), n=1000));
draw(graph(f3, 1/exp(12), 2 - 1/exp(5), n=1000));

label("$A = 2$", (4, -0.45));
label("$A = 5$", (4, -1.3));
label("$A = 10$", (4.15, -2));
