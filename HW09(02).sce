/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

//используем функцию нахождения найб. общего делителя написанную ранее на основе алгоритма Эвклида
function [Gcd]=euclidalgo(a,b)
    k=0
    while %T
        c=modulo(a,b);
        a=b;
        b=c;
        if c==0 then
            Gcd=a
            break
        end
    end
endfunction


function [res]=roots_in_complex_plane(n)
    //к - коэф в способе выччисления корней из комплексных чисел перебираем его
    for k=0:(n-1)
        //считаем к-й корень из 1
        z=cos((2*%pi*k)/n)+%i*sin((2*%pi*k)/n);
        //берем его вещ. и мнимую часть
        a=real(z);
        b=imag(z);
        //проверяем его на первичность с помощью функции нахождения GCD
        if  euclidalgo(k,n)==1 then
            //первичный - плотим красным
            plot(a,b,'.r');
        else
            //иначе плотим синим
            plot(a,b,'.b');
        end
    end
endfunction
