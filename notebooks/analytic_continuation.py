import numpy as np
import scipy as sp
import matplotlib.pyplot as plt

x = lambda t: 2*np.exp(1.j * np.pi * t)
fx = lambda t: np.poly1d([1, 0, 2*x(t)**3, -x(t)**7])
roots = lambda t: fx(t).roots
r = np.array([roots(ti) for ti in t])
