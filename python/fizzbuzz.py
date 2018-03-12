
for i in xrange(100):
    msg = ""
    if i % 3 == 0:
        msg += "fizz"
    if i % 5 == 0:
        msg += "buzz"
    if not msg:
        msg = i
    print msg