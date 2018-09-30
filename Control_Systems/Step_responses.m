R = 2;
C = 0.1;
L = 1;
num1 = [1];
den1 = [L*C R*C 1];
G1 = tf(num1, den1);

num2 = [1];
den2 = [R*C 1];
G2 = tf(num2, den2);

subplot(2,1,1)
step(G2, 'k');
title('Step response of first order system');

subplot(2,1,2)
step(G1, 'k');
title('Step response of second order system');