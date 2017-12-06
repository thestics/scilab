/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function res=ell_common(a,b)
    clf();
    //вектор от левой до правой вершины елипса
    x=linspace(-a,a,100);
    //у выраженный через х
    y=sqrt(b^2*(1-x^2/a^2));
    //построение верхней и нижней части элипса
    plot(x,y);
    plot(x,-y);
endfunction

function res=ell_param(a,b)
    clf();
    //вектор по параметру т
    t=linspace(0,2*%pi,100);
    x=[];
    y=[];
    //создание двух матриц со значениями х, у
    for i=1:100
        x=[[x],a*cos(t)];
        y=[[y],b*sin(t)];
    end
    plot(x,y);
endfunction

function res=hyperbol_common(a,b)
    clf();
    //веторы аргументов для левой и правой ветви праболы
    x1=linspace(-30,-a,1000);
    x2=linspace(a,30,1000);
    //векторы значений соответствующих аргументов 
    y1=sqrt(b^2*((x1^2/a^2)-1));
    y2=sqrt(b^2*((x2^2/a^2)-1));
    //построение
    plot(x1,y1,x2,y2,'b');
    plot(x1,-y1,x2,-y2,'b');
endfunction

function res=hyperbol_param(a,b)
    clf();
    //вектор по параметру т
    t=linspace(-2,2,100);
    x=[];
    x1=[];
    y=[];
    //создание двух матриц со значениями х, у
    for i=1:length(t)
        x=[[x],a*cosh(t(i))];
        x1=[[x1],-a*cosh(t(i))];
        y=[[y],b*sinh(t(i))];
    end
    //построение 
    plot(x,y)
    plot(x1,y)
endfunction


function res=parab_common(p)
    clf();
    //парабола определена от нуля, этим и обоснован выбор границ вектора-аргумента
    x=linspace(0,25,500)
    //задаем ветвь параболы явной функцией
    y=sqrt(2*p*x)
    //строим по частям
    plot(x,y,'b')
    plot(x,-y,'b')
endfunction

function res=parab_param(p)
    clf();
    x=[];
    y=[];
    t=linspace(0,10,10);
    //собираем по аргументам-значениям
    for i=1:length(t)
        x0=t(i)^2/(2*p);
        y0=t(i);
        x=[[x],x0];
        y=[[y],y0];
    end
    //строим 
    plot(x,y,'b');
    plot(x,-y,'b');
endfunction
