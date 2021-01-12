% signal_dft_shifted.m
%%%%%%%%%%%%%%%%%%%%%%
fs=1000;
Ts=1/fs;
N=12000;
t=(0:N-1)*Ts;
s=sin(2*t.*(t-3).*(t-6).*(t-9).*(t-12));
%%%%%%%%%%%%%%%%%%%%
%
% discrete Fourier transform (shifted)
%
%%%%%%%%%%%%%%%%%%%%
kshift = (-N/2:N/2-1)*(100/N);
gshift = fftshift(g);
plot(kshift,gshift);
title('Discrete Fourier transform (shifted)');
xlabel('k = -N/2, ..., 0, ..., N/2');
xticks([-50 0 50])
xticklabels({'-500','0','500'})
ylabel('|F(x)[k]|');
yticks([0 200 400]);
