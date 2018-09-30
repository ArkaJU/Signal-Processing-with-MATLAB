num=[1 2];
den=[1 0 -1]; 
w=logspace(-2,3); 
G=freqs(num,den,w); 
FI=angle(G); 
polar(FI,abs(G)); 
title('Polar Plot')
