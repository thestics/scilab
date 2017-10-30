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


function у1=bitdiff(x1,x2)
    //значение функции делаем счетчиком, изначально обнуляем
    k=0
    //используем предыдущую функцию для перевода в двоичную систему счисления
    a1=ten2two(x1);
    b1=ten2two(x2);
    //находим длинну каждого числа
    len1=length(a1);
    len2=length(b1);
    //берем максимальную из них
    ind=max(len1,len2);
    //циклом перебираем каждый елемент строки с конца, сравниваем с таким же элементом по номеру но из другой строки
    for i=ind:-1:1
        if part(a1,i)~=part(b1,i) then
            //если не равны, считаем как необходимый к добавлению бит
            k=k+1;
        end
    end
    disp(k);
endfunction
