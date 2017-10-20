/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function [area,R]=vecproduct(x1,x2,x3,y1,y2,y3)
    //ищем модули векторов х,у
    modx=sqrt(x1^2+x2^2+x3^2);
    mody=sqrt(y1^2+y2^2+y3^2);
    //ищем их скалярное произведение
    xy=x1*y1+x2*y2+x3*y3;;
    //находим угол между векторами по формуле
    angle=acos(xy/(modx*mody));
    //находим площать ими образованного паралелограма
    area=modx*mody*sin(angle);
    //находим координаты векторного произведения
    A=det([x2,x3;y2,y3]);
    B=det([x1,x3;y1,y3]);
    C=det([x1,x2;y1,y2]);
    R=[A,B,C];
    disp(R)
endfunction

function [r1]=trianglearea(x1,x2,x3,y1,y2,y3,z1,z2,z3)
    //из координат точек делаем два вектора
    A=[x1,x2,x3];
    B=[y1,y2,y3];
    C=[z1,z2,z3];
    AB=B-A;
    AC=C-A;
    //берем их половинное произведение
    [n1,n2]=vecproduct(AB(1,1),AB(1,2),AB(1,3),AC(1,1),AC(1,2),AC(1,3));
    r1=(1/2)*n1;
    disp(r1,'area is');
endfunction
