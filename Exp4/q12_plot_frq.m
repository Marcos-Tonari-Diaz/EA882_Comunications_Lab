load q12.mat
dados=ans.Data;
fs=1e8;
X=dados(1:end-1);
L=length(X);
Y=fft(X);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = fs*(0:(L/2))/L;
plot(f,P1)

xlim_min=40e3;
xlim_max=160e3;
xlim([xlim_min xlim_max]);
xlabel('f (Hz)')
ylabel('Magnitude')