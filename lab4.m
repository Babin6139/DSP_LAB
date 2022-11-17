% Lab 4


%1. Fourier series expansion of odd signal for different N.(N= 3, 9, 100).
subplot(4,2,1)
FourierSeries(3,1);
title("Odd Signal(N = 3)")

subplot(4,2,2)
FourierSeries(9,1);
title("Odd Signal(N = 9)")

subplot(4,2,3)
FourierSeries(100,1);
title("Odd Signal(N = 100)")

%2. Fourier series expansion of even signal for different N. (N=3,9,100).
subplot(4,2,5)
FourierSeries(3,2);
title("Even Signal(N = 3)")

subplot(4,2,6)
FourierSeries(9,2);
title("Even Signal(N = 9)")

subplot(4,2,7)
FourierSeries(100,2);
title("Even Signal(N = 100)")


function void = FourierSeries(N,evorod)
  Ts = 0.01;
  T = 2;
  t=0;
  if evorod == 1
    t= 0:Ts:T-Ts;
    f(t < T/2) = 2
    f(t >= T/2) = -2
  endif
  if evorod == 2
      t = -T/2:Ts:T/2;
      f(t < -T/4) = 0;
      f((t >= -T/4) & (t <= T/4)) = 1;
      f(t > T/4) = 0;
  endif
  
  a = zeros(1, N+1);
  b = zeros(1, N+1);
  for n = 0:N
      a(n+1) = (2 * Ts / T) * sum(f .* cos(2 * pi * n * t / T));
      b(n+1) = (2 * Ts / T) * sum(f .* sin(2 * pi * n * t / T));
  end
  t = -2*T:Ts:2*T;
  fs = (a(1)/2) * ones(size(t));
  for n = 1:N
      fs = fs + (a(n + 1) * cos(2*pi*n*t/T)) + (b(n + 1) * sin(2*pi*n*t/T)) ;
  end
  plot(t,fs)
end  