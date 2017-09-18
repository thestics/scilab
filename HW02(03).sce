/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

x=[-50:0.01:50];
a=[-50:0.01:0];
b=[0:0.01:50];
y=sin(x)*exp(-2*x);
g1=(1+a^2)/sqrt(1+a^4);
g2=2*b+sin(b)^2/2+b;
plot(x,y,".r",g1,x1,".b",g2,x2,".b");

