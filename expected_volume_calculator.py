from math import pi as PI

X_mnp = 1.841
r = 4.125e-2
L = 19.25e-2
c = .3 # speed of light normalized to 1e9

# the expression from MATLAB: pi*r^2*(19.25e-2 - pi*((2*pi*f_111/c).^2-(1.841/(4.125e-2)).^2).^(-.5))*1e3;

while True:
	f_111 = float(input("Enter measured frequency in GHz: "))
	try:
		L_eff = (L - PI*((2*PI*f_111/c)**2-(X_mnp/r)**2)**(-.5))
	except TypeError: breakpoint()
	exp_vol = PI*r**2*L_eff*1e3 # for offset: subtract 0.073603
	print(f"Expected volume: {exp_vol} L\n")



