load q11.mat
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

xlim_min=.9e6;
xlim_max=1.1e6;
xlim([xlim_min xlim_max]);
ylim([0 1]);
xlabel('f (Hz)')
ylabel('Magnitude')