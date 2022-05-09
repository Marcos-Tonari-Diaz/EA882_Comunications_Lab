%inicio
function [data, Fs] = read_wav(name)
[y,Fs] = audioread(name);
y1=y(:,1);
t=1:1:length(y1);
t=t.*(1/Fs);
data=t;
data(2,:)=y1';
%fim