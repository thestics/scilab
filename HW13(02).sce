/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/


//здесь используем модифицированно функцию значения полинома в точке по Горнеру:
//возвращаем не значение а коэффициенты
function res=gorner(r,a)
    //от большего к меньшего коефы
    res=[r(1)];
    t=r(1);
    for i=2:length(r)
        t=a*t+r(i);
        res=[[res],t]
    end
endfunction

function res=deg_decomposition(r,a)
    //t - индекс нам необходимого коэффициента
    res=[];
    t=length(r);
    for i=1:length(r)
        //применяем схему горнера, меняем счетчик коэффициента
        r=gorner(r,a) 
        res=[[res],r(t)];
        t=t-1;
    end
endfunction
