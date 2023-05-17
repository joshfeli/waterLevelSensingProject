volume = [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7];
%meas_freq = [2.28584, 2.32766, 2.3915, 2.49055, 2.65783, 2.96928, 3.48874, 4.43947];
meas_freq = [2.2903, 2.33427, 2.3926, 2.47844, 2.6006, 2.802, 3.14537, 3.76388];
%exp_freq = [2.267, 2.307, 2.367, 2.444, 2.564, 2.765, 3.139, 3.727];

r = 4.125e-2;
c = 0.3;
f_111 = 2.27:0.1:4;
vol2 = (pi*r^2*(19.25e-2 - pi*((2*pi*f_111/c).^2-(1.841/(4.125e-2)).^2).^(-.5))*1e3)-0.073603;
%0.073603

figure(1)
scatter(meas_freq, volume, 86, 'filled')

hold on;

plot(f_111, vol2, "r")
hold off;

title('Frequency vs Volume with Offset', 'FontSize', 18)
xlabel('$\textbf {Frequency (GHz)}$','Interpreter','latex','FontSize', 14);
ylabel('$\textbf {Volume (L)}$','Interpreter','latex','FontSize', 14);
leg = legend('Measured', 'Expected','Location', 'southeast');

%once this is run, in command window, type improvePlot and hit Enter;
%then type ylim([0 0.8]) and hit Enter
%note: you must put improvePlot.m and this file in the same folder