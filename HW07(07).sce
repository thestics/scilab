/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function res=ISBN10(a);
    b=0;
    //проверяем на правильность ввода
    if (a>9999999999) || (a<1000000000) then
        res=%f;
        disp('invalid input');
    else
        //создаем копию введенного число
        extraA=a
        //циклом берем каджое число с конца, домножаем его на его номер с конца и заносим в общую сумму
        for i=1:10
            x=modulo(a,10);
            b=b+x*i;
            a=int(a/10);
        end
        //создаем булеву переменную с конгуренцией суммы к 11
        res=(modulo(b,11)==0);
        //выводим булеву переменную
        disp(res);
    end
endfunction
