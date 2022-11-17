%lab1 

% Study important commands

x=-2:0.5:2;
y=x.^2;


subplot(2,2,1)
plot(x,y)
title("Plot 1")
xlabel("x-axis")
ylabel("y-axis")

subplot(2,2,2)
z=linspace(1,5,5)
x=linspace(0,10,5)
stem(x,z)
title("Plot 2")
xlabel("x-axis")
ylabel("y-axis")

subplot(2,2,3)
z=linspace(1,5,5)
x=linspace(0,10,5)
bar(x,z)
title("Plot 3")
xlabel("x-axis")
ylabel("y-axis")


subplot(2,2,4)
z = [0:0.05:5];
plot3 (cos (2*pi*z), sin (2*pi*z), z);
legend ("helix");
 
xlabel("x-axis")
ylabel("y-axis")
zlabel("z-axis")
title ("plot3() of a helix");


% Familiarization with MATLAB environment.

% Matrix A of 3 x 4
A=[1,2,3,4;
  5,6,7,8;
  9,10,11,12]
  
% Matrix B of 4 x 3
B=[1,2,3;
  5,6,7;
  9,10,11;
  4,8,12
  ]

  
  