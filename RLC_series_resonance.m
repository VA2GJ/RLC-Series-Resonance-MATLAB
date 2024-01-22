% RLC_series_resonance.m
R = 50;
L = 50e-6;
C = 40e-12;


f1 = 1e6;
f2 = 10e6;
N=1000;
w = linspace(2*pi*f1,2*pi*f2,N);
s = 1i*w;


Num = L*C*s.^2 + R*C*s + 1;
Den = C*s;

%h = freqs(NUM,DEN,w);
h = Num./Den;

mag = abs(h);

loglog(w/(2*pi),mag)
grid on
xlabel('{Frequency/Fr\''equence [Hz]}','interpreter','latex')
ylabel('{Magnitude of Impedance/Magnitude de l''imp\''edance [volts]}',...
    'interpreter','latex')
xmin = 1e6;
xmax = 10e6;
ymin = 40;
ymax = 6e3;
axis([xmin xmax ymin ymax]);
title_txt = ['{RLC Series Circuit/Circuit RLC en s\''erie}'];
t = title(title_txt,'interpreter','latex');
t.FontSize = 14;





% To do accent grave
%title('{Param\`etres des canaux}','interpreter','latex')