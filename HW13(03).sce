/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

//функция перебора всех делителей числа
function res=dividers(n)
    res=[];
    for i=1:abs(n)
        if modulo(n,i) == 0 then
            res=[[res],i]
        end
    end
endfunction

//имплементация предыдущей функции
function res=gorner(r,a)
    //от большего к меньшего коефы
    t=r(1);
    for i=2:length(r)
        t=a*t+r(i);
        res=t;
    end
endfunction

//---------------------------------------------------------------------------------------------
function res=rational_roots(r)
    res=[];
    roots_matrix=[];
    //от большего к меньшему коэфы
    //находим делители свободного и старшего коэффициентов
    a_n=dividers(r(1));
    a_0=dividers(r(length(r)));
    //собираем матрицу возможных корней р/q
    for i=1:length(a_0)
        for j=1:length(a_n)
            //учитываем, что если число делится на а, то оно делится и на -а
            roots_matrix=[[roots_matrix],a_0(i)/a_n(j),-a_0(i)/a_n(j)]
        end
    end
    //проверяем, являются ли корнями
    for i=1:length(roots_matrix)
        if gorner(r, roots_matrix(i)) == 0 then
            res=[[res],roots_matrix(i)]
        end
    end
    if res == [] then
        res='no rational roots exist'
    end
endfunction
