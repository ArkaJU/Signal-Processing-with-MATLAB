n = -6:1:6;
h = ones(13, 1);
subplot(1, 2, 1);
stem(n, h, 'k', 'filled');
axis([-6 6 0 1.2]); title('h(n)'); xlabel('n');
H1 = real(fft(h, 512));
Hf = H1/max(H1);
w = -pi:(2*pi/511):pi;

subplot(1,2,2); plot(w,fftshift(Hf),'k');
axis([-pi pi -0.3 1]); title('H(w)');
xlabel('normalized frequency');
hold on;
plot([-pi pi],[0 0],'--k');
