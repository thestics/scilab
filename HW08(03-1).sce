/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function a=plottwolines(A1,B1,C1,A2,B2,C2)
    //задаем область определения
    x=[-10:00.1:10];
    //представляем уравненя прямых в виде явных функций
    y1=(-A1/B1)*x+(-C1/B1);
    y2=(-A2/B2)*x+(-C2/B2);
    //строим обе на одной области определения
    plot(x,y1);
    plot(x,y2,'r');
    //проверяем на паралельность
    if A1/A2==B1/B2 then
        angle=0;
        //выводим соответствующие сообщения
        disp('lines are parallel')
        disp(angle,'angle=');
    else
        //приравниваем предыдущие функции, находим точку пересечения и подставляем её в одну из фунций
        x0=((-C2/B2)-(-C1/B1))/((-A1/B1)-(-A2/B2));
        y0=(-A1/B1)*x0+(-C1/B1);
        //строим соответствующую точку
        plot(x0,y0,'.b')
        //считаем угол как угол между нормалями прямых
        angle=acos((A1*A2+B1*B2)/sqrt((A1^2+B1^2)*(A2^2+B2^2)))
        disp(angle,'angle=');
    end
    a='';
endfunction
