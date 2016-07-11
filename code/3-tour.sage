sage: from abelfunctions import *  # import all functionality
sage: R.<x,y> = QQ[]
sage: f = x**2*y**3 - x**4 + 1
sage: X = RiemannSurface(f); X  # create a Riemann surface
Riemann surface defined by f = x^7 - 2*x^3*y + y^3
sage: g = X.genus(); g
4
sage: for n in range(10): print n
