/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/


//генерируем матрицу простых чисел 1-10*6
prime=primes(10^6);

for i=1:10^7
//генерируем ранд. число, умножаем его на 10**4, убираем минус и числа после запятой,
//с помощью цикла заносим в матрицу
    rand_matrix(1,i)=round(abs(rand()*10^4));
end

//функция теста Ферма
function y=fermatest(a,n);
    //малая теорема Ферма. Её проверка и вывод соответствующих булевых констант
    if modulo(a^(n-1),n)==1 then
        y=%T;
    else
        y=%F;
    end
endfunction


//задаем нач. переменную
totalprimes=0
//перебираем элементы первой матрицы, проверяем на равенство с каждым из второй, если истина - считаем
for i1=1:(size(rand_matrix) (1,2))
    tmpbox=rand_matrix(1,i1);
    for i2=1:(size(prime) (1,2))
        if tmpbox==prime(1,i2) then
            totalprimes=totalprimes+1;
        end
    end
end
disp(totalprimes,'ptimes');

//задаем нач переменную
totpsd=0
//циклом перебираем все случайные числа в матрице
for i3=1:(size(rand_matrix) (1,2));
    //задаем три случайные базы
    a=round(abs(rand()*10^2));
    b=round(abs(rand()*10^2));
    c=round(abs(rand()*10^2));
    //проверка на прохождение теста ферма по трем базам, подсчет в случае истины
    if fermatest(a,rand_matrix(1,i3))==fermatest(b,rand_matrix(1,i3))==fermatest(c,rand_matrix(1,i3))==%t then
        totpsd=totpsd+1;
    end
end
disp(totpsd,'total pseudoprime numbers on 3 random base');

