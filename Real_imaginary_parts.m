w = [0:1:1000]*pi/1000; % [0, pi] axis divided into 1001 points.
X = exp(j*w) + exp(j*2*w) + exp(j*3*w) + exp(j*4*w);
magX = abs(X); 
angX = angle(X); 
realX = real(X); 
imagX = imag(X);

subplot(2,2,1); 
plot(w/pi,magX); grid
title("Magnitude Part"); 
xlabel("Normalised frequency"); 
ylabel("Magnitude")

subplot(2,2,3); 
plot(w/pi,angX); grid
title("Phase Part");
xlabel("Normalised frequency");  
ylabel("Radians")

subplot(2,2,2); 
plot(w/pi,realX); grid
title("Real Part");
xlabel("Normalised frequency");  
ylabel("Real Part")

subplot(2,2,4); 
plot(w/pi,imagX); grid
title("Imaginary Part");
xlabel("Normalised frequency");  
ylabel("Imaginary")