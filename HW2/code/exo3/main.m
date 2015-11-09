%% main

clear
clc

N=1000;
x0=-2;

%% Independent kernel

[X, alpha] = indHM(x0,N);

figure(1),
subplot(2,2,1);
histogram(X);
title('Histogram of X: indenpendent Kernel')

subplot(2,2,2);
alpha=alpha';
alpha=cumsum(alpha)./(1:N);
plot(alpha);
title('evolution of the acceptance rate: indenpendent Kernel')
alpha(end)
%% Random walk Kernel

[X, alpha] = rwHM(x0,N);

subplot(2,2,3);
histogram(X);
title('Histogram of X: random walk Kernel')

subplot(2,2,4);
alpha=alpha';
alpha=cumsum(alpha)./(1:N);
plot(alpha);
title('Histogram of alpha: indenpendent Kernel')
alpha(end)