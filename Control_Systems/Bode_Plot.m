R=1; C=0.1;
num = [1 1];
den = [R*C 1];
w = logspace(-1, 2);
G = freqs(num, den, w);
Gain = 20*log10(abs(G));
Phase = angle(G);

subplot(2, 1, 1);
semilogx(w, Gain, 'k');
grid;
ylabel('dB'); title('Frequency Response');

subplot(2, 1, 2);
semilogx(w, Phase, 'k');
grid;
ylabel('rad');
xlabel('rad/s');
