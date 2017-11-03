/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/


function [res]=complex_plot(xstep,ystep,deg,n)
    result=[]
    //берем перебором значения икса и игрека с заданным шагом
    for x=-10:xstep:10
        for y=-10:ystep:10
            //проверяем заданное условие
            if modulo(round(abs(x+%i*y)^deg),n)==0 then
                //в положительном случае создаем соответствующее комплексное число, заносим в матрицу
                a=x+y*%i;
                result=[result,a];
            end
        end
    end
    //плотим точки из матрицы, разбив их по вещественным/мнимым координатам для корректной работы функции плот
plot(real(result),imag(result),'ro')
endfunction
