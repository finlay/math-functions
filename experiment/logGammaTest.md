## Testing the log gamma functions

### Reference set of numbers

    from mpmath import *
    mp.dps = 20
    mp.pretty = True
    xs = [10 ** (x/100.0 + 0.001) for x in range(-10*100, 10*100)]
    [(x, log(gamma(x))) for x in xs]
