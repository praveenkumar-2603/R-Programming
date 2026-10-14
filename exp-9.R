rm(list=intersect("c", ls()))

plot(
  1, 1,
  type="n",
  xlim=c(0, 10),
  ylim=c(0, 10),
  xlab="X Axis",
  ylab="Y Axis",
  main="Empty Plot"
)
