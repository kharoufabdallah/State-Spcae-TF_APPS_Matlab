wn=1; %initializing Wn =1
damprat=0.2; %first case is underpamped case
t=0:0.1:10; %taking first 10 sec's
[num,den]=ord2(wn,damprat); %displaying the 2nd order state space rep.
[y,x,t]=step(num,den,t);
plot(t,y,'b') %underdamped resp. in blue
grid
hold on
damprat=1; %critically damped case
[num1,den1]=ord2(wn,damprat);
[y1,x,t]=step(num1,den1,t);
plot(t,y1,'r') %in red
grid
hold on
damprat=1.5; %overdamped case
[num2,den2]=ord2(wn,damprat);
[y2,x,t]=step(num2,den2,t);
plot(t,y2,'g') %in green
grid
hold on
damprat=0; %undamped case
[num2,den2]=ord2(wn,damprat);
[y2,x,t]=step(num2,den2,t);
plot(t,y2,'k') %in black
grid
