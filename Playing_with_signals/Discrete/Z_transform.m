b = [1, 0]; a = [1, -0.9];
[H,w] = freqz(b,a,100); 
magH = abs(H); phaH = angle(H);

subplot(2,1,1);plot(w/pi,magH);grid
title("Magnitude Response")
xlabel("Normalised frequency"); 
ylabel("Magnitude");


subplot(2,1,2);plot(w/pi,phaH/pi);grid
title("Phase Response")
xlabel("Normalised frequency"); 
ylabel("Normalised phase");
