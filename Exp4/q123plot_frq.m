load q13.mat
dados=ans.Data;
fs=20e6;
X=dados(1:end-1);
L=length(X);
Y=fft(X);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = fs*(0:(L/2))/L;
plot(f,P1)
xlabel('f (Hz)')
ylabel('Magnitude')