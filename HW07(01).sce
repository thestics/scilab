/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function y=ten2two(n)
    m=n;
//присваиваем пустую строку
    y='';
    while %t
        //берем первый остаток от деления на базу
        a=string(modulo(n,2));
        //записыаем его первым числом(склеиваем строки)
        y=a+y;
        //убираем учетнный остаток
        n=int(n/2);
        //проверяем, нужно ли продолждать цикл
        if n==0 then
            break
        end
    end
endfunction
