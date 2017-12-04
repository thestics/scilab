/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/


function res=gorner(r,a)
    //от большего к меньшего коефы
    timer();
    //берем первый старщий коэф отдельно
    t=r(1);
    //применяем с помощью цикла алгоритм Горнера
    for i=2:length(r)
        t=a*t+r(i);
        res=t;
    end
    t1=timer();
    disp(t1);
endfunction

function res=pointvalue(r,a)
    //от меньшего к большему коэфы
    timer();
    //счетчик степени переменной
    j=0;
    //значение
    res=0;
    //считаем значение многочлена в точке
    for i=1:length(r)
        res=res+r(i)*a^j
        j=j+1
    end
    t1=timer();
    disp(t1);
endfunction
