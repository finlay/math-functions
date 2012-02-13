
d <- read.csv('differences.csv')
d <- d[seq(1,2000,1), ]

svg(file='differences.svg', width=10, height=7)

plot(d$x,  d$lgd,   type='l', log='xy', axes=FALSE, xlab='', ylab='')
lines(d$x, d$lgfnd, type='l', col='blue')
lines(d$x, d$lgld,  type='l', col='red')
lines(d$x, d$lgd,   type='l', col='black')

axis(1)
yticks <- axTicks(2)
axis(2, las=1, at=yticks, label=yticks)
legend('topright', c('logGamma', 'logGammaL', 'logGammaFN'),
       col=c('black','red', 'blue'),
       pch=16,
       bty='n')

dev.off()

