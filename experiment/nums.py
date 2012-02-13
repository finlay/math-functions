from mpmath import *
mp.dps = 40
mp.pretty = True
xs = [10 ** (x/100.0 + 0.001) for x in range(-10*100, 10*100)]

print "module Nums where"
print
print "nums :: [(Double,Double)]"
print "nums = \n   [",
print ",\n    ".join(["(%.40g,%.40g)" % (x, log(gamma(x))) for x in xs]), ']'

