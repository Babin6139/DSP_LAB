%Lab 3

%Question 1: Generate the signal x = 5sin(2 pi f t) with 5 cycles, where f = 2 kHz signal and sample the signal with
%frequency 5 KHz, 10 Khz, 20 KHz. (Title and label each figure)

cycles=5;
f=2000
t=0:0.000001:cycles*1/f;
x = 5*sin(2*pi*f*t);
subplot(4,2,1)
plot(t,x);
title('Sinusoidal wave of frequency 2kHz and having 5 cycles');       
xlabel('Time(s)');
ylabel('Amplitude');
legend('Sine wave');

%Sampling the signal with frequency 5 KHz
srate1=5000;
t1=0:1/srate1:cycles*1/f;
x1 = 5*sin(2*pi*f*t1);
subplot(4,2,3)
plot(t,x);
hold on
stem(t1,x1);
title('Sampling Continuous sinusoidal signal at frequency=5 kHz');
xlabel('Time(s)');
ylabel('Amplitude');
legend('Sine wave');

%Sampling the signal with frequency 10 KHz
fs2=10000;
t2=0:1/fs2:cycles*1/f; 
x2=5*sin(2*pi*f*t2);
subplot(4,2,5)
plot(t,x);
hold on
stem(t2,x2);
title('Sampling Continuous sinusoidal signal at frequency = 10 kHz');
xlabel('Time(s)');
ylabel('Amplitude');
legend('Sine wave');

%Sampling the signal with frequency 20 KHz
srate3=20000
t3=0:1/srate3:cycles*1/f;
x3 = 5*sin(2*pi*f*t3);
subplot(4,2,7)
plot(t,x);
hold on
stem(t3,x3);
title('Sampling Continuous sinusoidal signal at frequency=20 kHz');
xlabel('Time(s)');
ylabel('Amplitude');
legend('Sine wave');



% Question 2: Generate the signal x = 5cos(2 pi f t) with 3 cycles, where f = 2 kHz signal and sample the signal with
%frequency 5 KHz, 10 Khz, 20 KHz. (Title and label each figure)

%Cosine wave
cycles=3;
f=2000
t=0:0.000001:cycles*1/f;
x = 5*cos(2*pi*f*t);
subplot(4,2,2)
plot(t,x);
title('Continuous cosine signal at frequency=2 kHz with 3 cycles');
xlabel('Time(s)');
ylabel('Amplitude');
legend('Cosine wave');

%Sampling the signal with frequency 5 KHz
fs1=5000;
t1=0:1/fs1:cycles*1/f
x1 = 5*cos(2*pi*f*t1);
subplot(4,2,4)
plot(t,x);
hold on
stem(t1,x1);
title('Sampling Continuous cosine signal at sampling frequency of 5KHz');
xlabel('Time(s)');
ylabel('Amplitude');
legend('Cosine wave');

%Sampling the signal with frequency 10 KHz
fs2=10000
t2=0:1/fs2:cycles*1/f;
x2 = 5*cos(2*pi*f*t2);
subplot(4,2,6)
plot(t,x);
hold on;
stem(t2,x2);
title('Sampling Continuous cosine signal at sampling frequency of 10KHz');
xlabel('Time(s)');
ylabel('Amplitude');
legend('Cosine wave');


%Sampling the signal with frequency 20 KHz
fs3=20000
t3=0:1/fs3:cycles*1/f
x3 = 5*cos(2*pi*f*t3);
subplot(4,2,8)
plot(t,x);
hold on;
stem(t3,x3);
title('Sampling Continuous cosine signal at sampling frequency of 20KHz');
xlabel('Time(s)');
ylabel('Amplitude');
legend('Cosine wave');

