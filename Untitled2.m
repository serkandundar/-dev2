fs = 10000;
t = 0:1/fs:1.5;
x1 = 2*sawtooth(2*pi*50*t);
x2 = square(2*pi*50*t);
subplot(1,2,1)
plot(t,x1)
axis([0 0.2 -2.2 2.2])
xlabel('Time (sec)')
ylabel('Amplitude') 
title('Sawtooth Periodic Wave')
subplot(1,2,2)
plot(t,x2)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Square Periodic Wave')
%
fs = 1000;
t = -1:1/fs:1;
x1 = tripuls(t,20e-3);
x2 = rectpuls(t,50e-3);
subplot(2,1,1)
plot(t,x1)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Triangular Aperiodic Pulse')
subplot(2,1,2)
plot(t,x2)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Rectangular Aperiodic Pulse')
%
t = 0 : 1/50e3 : 10e-3;
d = [0 : 1/1e3 : 10e-3 ; 0.6.^(0:10)]';
y = pulstran(t,d,'gauspuls',10e3,0.5); 

plot(t,y)
xlabel 'Time (s)', ylabel 'Periodic Gaussian pulse'

%

x=[0:5:360];
c=cos(x*pi/180); %Matlabda trigonometrik iþmelemler radian cinsinden yapýlýr
s=sin(x*pi/180); %Matlabda trigonometrik iþmelemler radian cinsinden yapýlýr
subplot(1,2,1), plot(x,c);
xlabel('x');
ylabel('cos(x)');
title('0 - 360 derece arasý kosinus');
subplot(1,2,2), plot(x,s);
xlabel('x');
ylabel('sin(x)');
title('0 - 360 derece arasý sinus');
%

fs=10 %fs=100 hz
f=1 %1 Hz
t=0:1/fs:5
y1=sin(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',2)
y2=cos(2*pi*f*t)
subplot(2,1,2)
plot(t,y2,'LineWidth',2)
grid on
%
n=-100:1:5
y=sin(2*pi*n/25)
stem(n,y)
%
t=-5:1:5;
g_even=(g(t)+g(-t))/2
g_odd=(g(t)-g(-t))/2
plot(t,g_odd)
%
n=-10:10
y=(3.^abs(n)).*cos(2*pi*n/4)
sum(abs(y.^2))
%
fs=100 %fs=100 hz
f=1 %1 Hz
t=0:1/fs:5
y1=sin(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',2)
fs1=40
t_samp1=0:1/10:5
y2=sin(2*pi*f*t_samp1)
subplot(2,1,2)
stem(t_samp1,y2)