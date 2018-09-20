fy = 2;
wy = 2*pi*fy;
fs = 6000; 
tiv = 1/fs;
t = 0:tiv:(3-tiv); 

y = 0.4*sin(wy*t)+0.21*sin(3*wy*t)+0.12*sin(5*wy*t);
plot(t, y, 'k');
axis([0 3 -1.5 1.5]);
xlabel('seconds'); 
title('Sum of sine signals');