%Generate a continuous time sinusoidal wave of amplitude 5.
x=[-15:0.1:15];
y=5*sin(x);
subplot(4,2,1)
plot(x,y);
title('Continuous time sinusoidal wave of amplitude 5');
xlabel('x-axis');
ylabel('y-axis');

%Generate a unit impulse function
time_period = [-15:1:15];
amplitude = [zeros(1,15), ones(1,1), zeros(1,15)];
subplot(4,2,2)
stem(time_period,amplitude);
title('impulse function');
xlabel('time period');
ylabel('amplitude');

%Generate a unit step function.

stepx=[-10:1:10];
stepy= stepx>=0;
subplot(4,2,3)
stem(stepx,stepy);
title('Unit Step Signal');
xlabel('time period');
ylabel('amplitude');

%Generate a unit ramp function.
rampx=[-15:1:15];
rampy= (rampx>=0).*rampx;
subplot(4,2,4)
stem(rampx,rampy);
title('Unit Ramp Function');
xlabel('time period');
ylabel('amplitude')

%Generate a continuous time sinc function
X = [-15:0.3:15];
y = sinc(X);
subplot(4,2,5)
plot(X,y);
title('Continious time Sinc Function');
xlabel('time period');
ylabel('amplitude');
legend('Continious Time sinc');

%Generate a continuous time exponential(growing, decaying, DC signal)

%growing signal
subplot(4,2,6);
x=[-15:0.1:15];
y=exp(x);
plot(x,y,'.-.');
title('Growing Exponential Function');
xlabel('time period');
ylabel('amplitude');

%decaying signal
subplot(4,2,7);
x=[-10:0.1:10];
y=exp(-x);
plot(x,y);
title('Decaying Exponential Function');
xlabel('time period');
ylabel('amplitude');

%DC Signal
subplot(4,2,8);
x=[-10:0.1:10];
y=1;
plot(x,y,'.-.');
title('DC signal');
xlabel('time period');
ylabel('amplitude');