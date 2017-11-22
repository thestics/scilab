/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function res=point2line(x0,y0,z0,x1,y1,z1,u1,u2,u3)
    //предварительно выведенное уравнение параметра
    t=(u1*(x0-x1)+u2*(y0-y1)+u3*(z0-z1))/(u1^2+u2^2+u3^2);
    //соответствующие вычисления
    x=x1+u1*t;
    y=y1+u2*t;
    z=z1+u3*t;
    res=sqrt((x-x0)^2+(y-y0)^2+(z-z0)^2)
endfunction
