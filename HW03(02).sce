/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

A=[2,1,3;1,1,1;1,3,2];                            //Решить систему с помощью
B=[10;6;13];                                      //матриц
X=inv(A)*B;
disp(X(3,1),'z=',X(2,1),'y=',X(1,1),'x=');
x=X(1,1);
y=X(2,1);
z=X(3,1);

x1=input("x?");
y1=input("y?");
z1=input("z?");

if 2*x+y+3*z==10 then                               //проверка на правильность
    disp('answer is true for first equation')     
end                                               
if x+y+z==6 then
    disp('answer is true for second equation')
end
if x+3*y+2*z==13 then
    disp('answer is true for third equation')
end



if 2*x1+y1+3*z1==10 then                               //проверка на правильность
    disp('inputed answer is true for first equation')          
end                                                
if x1+y1+z1==6 then
    disp('inputed answer is true for second equation')
end
if x1+3*y1+2*z1==13 then
    disp('inputed answer is true for third equation')
end



