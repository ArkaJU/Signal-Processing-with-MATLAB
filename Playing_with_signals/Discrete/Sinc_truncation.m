N=100;
%points of H(w)
H=[ones(N,1);zeros(256-N,1);
zeros(256-N,1);ones(N,1)]';
h1=ifft(H,512); %inverse Fourier transform
h=ifftshift(h1); %compose symmetrical plot
h=real(h);
hf=h((256-15):(256+15)); %truncation of h(n)
%discrete Fourier transform:
H1=abs(fft(hf,512)); Hf=H1/max(H1);
w=-pi:(2*pi/511):pi;
plot(w,fftshift(Hf),'k'); %plots H(w)
axis([-pi pi -0.1 1.1]); title('H(w)');
xlabel('normalized frequency');