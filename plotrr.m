plot(r1,'b-o');
grid on;
hold on;
plot(r1_g,'r-o');
xticks([1 2 3 4]);
ylim([0.5 2.5]);
xlabel('Density from low to high');
legend('Snake','Grating');
title('Responses of NOA');