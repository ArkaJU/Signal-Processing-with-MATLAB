fx=100; 
wx=2*pi*fx; 
fz=20; 
wz=2*pi*fz; 
fs=6000; 
tiv=1/fs;
t=0:tiv:(8-tiv); 
y1=sin(wx*t); 
y2=sin(wz*t);

y=y1.*y2;

subplot(2,2,1)
plot(t,y1,'k'); 
axis([0 1 -1.5 1.5]);
xlabel('seconds'); 
s = 'Signal 1 with frequency %d %s'
str = sprintf(s, fx, 'Hz')
title(str);

subplot(2,2,2)
plot(t,y2,'k'); 
axis([0 1 -1.5 1.5]);
s = 'Signal 2 with frequency %d %s'
str = sprintf(s, fz, 'Hz')
title(str);

subplot(2,2,[3,4])
plot(t,y,'k'); 
axis([0 1 -1.5 1.5]);
xlabel('seconds'); 
title('Multiplication of sines signal');

sound(y,fs);
%audiowrite('multiplied_signals.wav',y,fs)