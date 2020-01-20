from abelfunctions import *
import numpy as np

R.<x,y> = QQ['x,y']; R
f2 = y^3 + 2*x^3*y - x^7
X2 = RiemannSurface(f2)

gammax = (
    abelfunctions.complex_path_factory.ComplexArc(2, 0, 0, np.pi) +
    abelfunctions.complex_path_factory.ComplexArc(2, 0, np.pi, np.pi)
)


f2_x2 = f2(x=2).univariate_polynomial()
y0 = [np.complex(root) for (root,multiplicity) in f2_x2.roots(CC)]
gamma = X2.path_factory.RiemannSurfacePath_from_complex_path(gammax, x0=2, y0=y0)

gamma[2].plot_y(color='red')