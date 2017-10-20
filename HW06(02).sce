/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function res=three_prod(a1,a2,a3,b1,b2,b3,c1,c2,c3)
    function [area,R,bool]=vecproduct(x1,x2,x3,y1,y2,y3)
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
    endfunction
    //берем вектороное произведение первых двух и умножаем скалярно на третий
    [n1,n2]=vecproduct(a1,a2,a3,b1,b2,b3);
    res=n2(1,1)*c1+n2(1,2)*c2+n2(1,3)*c3;
    disp(res);
    //проверяем вектора на омпланарность определителем
    if det([a1,a2,a3;b1,b2,b3;c1,c2,c3])==0 then
        disp('belongs to one surface');
        //присваиваем сответствующие булевы переменные
        bool=%T;
    else
        disp('does not belong to one surface');
        bool=%F;
    end
endfunction

function res=onesurface(k1,k2,k3,l1,l2,l3,m1,m2,m3,n1,n2,n3)
    //Берем векторы а.в.с
    A=[l1-k1,l2-k2,l3-k3];
    B=[m1-k1,m2-k2,m3-k3];
    C=[n1-k1,n2-k2,n3-k3];
    //заносим отдельно булеву переменную из предыдущей функции
    [s1,s2,s3]=three_prod(A(1,1),A(1,2),A(1,3),B(1,1),B(1,2),B(1,3),C(1,1),C(1,2),C(1,3));
    //определяем её значение и выводим соответсвующие сообщения
    if s3==%T then
        disp('4 points belongs to one surface');
    else
        disp('4 points do not belong to one surface');
    end
endfunction
