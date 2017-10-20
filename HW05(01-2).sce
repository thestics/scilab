/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

//сколько существует псевдопростых чисел 

//вводим число
n=input('input 10^2,10^3 or 10^6');
amount=0;
//циклом выполняем тест ферма, считаем количество
for i=1:n
    if modulo(2^(i-1),i)==1 then
        amount=amount+1;
        disp(i);
    end
end
disp(amount,);
