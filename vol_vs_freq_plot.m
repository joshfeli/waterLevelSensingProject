volume = [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.68];
meas_freq = [2.28584, 2.32766, 2.3915, 2.49055, 2.65783, 2.96928, 3.48874, 4.43947];
%exp_freq = [2.267, 2.307, 2.367, 2.444, 2.564, 2.765, 3.139, 3.727];

r = 4.125e-2;
c = 0.3;
f_111 = 2.27:0.1:5;


vol2 = pi*r^2*(19.25e-2 - pi*((2*pi*f_111/c).^2-(1.841/(4.125e-2)).^2).^(-.5))*1e3;

scatter(meas_freq, volume,'filled')

hold on;

plot(f_111, vol2, "r")
hold off;

title('Frequency vs Volume', 'FontSize', 14)
xlabel('Frequency (GHz)', 'FontSize', 11);
ylabel('Volume (L)', 'FontSize', 11);
leg = legend('Measured Volume', 'Expected Volume','Location', 'southeast');

% function v = volFunc(freq)
%     v = pi*r^2*(19.25e-2 - pi*((2*pi*freq/c).^2-(1.841/(4.125e-2)).^2).^(-.5))*1e3;
% end
