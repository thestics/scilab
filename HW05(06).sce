/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

x1=input('x1=');
y1=input('y1=');
x2=input('x2=');
y2=input('y2=');
X=[x1,x2];
Y=[y1,y2];
plot(X,Y,'r','-');

for i=x1:x2
    y=((y2-y1)/(x2-x1))*i+((y1-x1)/(x2-x1));
    if modulo(y,1)==0 then
        a=i
        plot(a,y,'xb');
    end
end
