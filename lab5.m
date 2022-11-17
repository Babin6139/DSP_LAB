%Linear Convolution
x_axis=[-1,0,1]
x = [1 1 1];
h = [1 1 1];
linear_convolution = conv(x,h);

%Part 1
subplot(3,3,1)
stem(x_axis,x,'filled')
xlabel('n')
ylabel('x[n]')
title('x[n]= [1 1 1]')

subplot(3,3,4)
stem(x_axis,h,'filled')
xlabel('n')
ylabel('h[n]')
title('h[n]= [1 1 1]')

subplot(3,3,7)
x_axis=x_axis(:,1,1)*2: x_axis(end,end,1)*2
stem(x_axis,linear_convolution,'filled')
xlabel('n')
ylabel('x[n]*h[n]')
title('Linear Convolution of x and h')

%Part 2
x=[0,1,2,3,4]
h=[0,2,3,4,5]
x_axis=[0,1,2,3,4]

linear_convolution=conv(x,h)

subplot(3,3,2)
stem(x_axis,x,'filled')
xlabel('n')
ylabel('x[n]')
title('x[n]=[0,1,2,3,4]')

subplot(3,3,5)
stem(x_axis,h,'filled')
xlabel('n')
ylabel('h[n]')
title('h[n]=[0,2,3,4,5]')

subplot(3,3,8)
x_axis=x_axis(:,1,1)*2: x_axis(end,end,1)*2
stem(x_axis,linear_convolution,'filled')
xlabel('n')
ylabel('x[n]*h[n]')
title('Linear Convolution of x and h')

% Circular Convolution
x1=[1,2,2,0]
x2=[1,2,3,4]
x_axis=[0,1,2,3]
subplot(3,3,3)
stem(x_axis,x1,'filled')
xlabel('n')
ylabel('x1')
title('x1=[1,2,2,0]')

subplot(3,3,6)
stem(x_axis,x2,'filled')
xlabel('n')
ylabel('x2')
title('x2=[1,2,3,4]')
l1 = length(x1)
l2 = length(x2)
n = max(l1, l2)
y = zeros(1,n);

if l1 > l2
  x2 = [x2, zeros(1, l1 - l2)]
elseif l1 < l2
  x1 = [x1, zeros(1, l2 - l1)]
end
for m = 0:n-1
  for o=0:n-1
    z=mod(m-o,n);
    y(m+1)=y(m+1)+x1(o+1).*x2(z+1);
    
  endfor
endfor



subplot(3,3,9)
stem(x_axis,y,'filled')
xlabel('n')
ylabel('y')
title('Circular Convolution of x1 and x2')




