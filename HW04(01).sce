/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/



timer();
a=primes(1000000);
//создаем матрицу из простых чисел от 1 до 10^6  

i=1;
j=2;
f=0
k=size(a) (1,2)
//находим количество элементов в нём
while j<=k
    if a(1,j)-a(1,i)==2 then
       f=f+1
    end
    j=j+1;
    i=i+1;    
end
//перебираем циклом все соседние двойки из простых чисел. Вычитаем след из пред и проверяем на равенство двум

disp("prime twins among 10^6 integers",f,"there is a");
time1=timer();

//--------------------------------------------------------

timer();
n=input("how big integer do you want?");
if n>10**6 then
    disp("too big integer")
//проверяем начальное условие
else
    primesmatrix=primes(n);
    //создаем матрицу из простых чисел 
    amountofprimes=size(primesmatrix) (1,2);
    //считаем количество пэлементов в эту матрицу
    disp(amountofprimes,"amount of pirmes before your integer is")
end
time2=timer();

//-----------------------------------------------------


timer();
for index=1:250 //цикл для перебора значений от 1 до 100
    A=primes(index); //находим матрицу из простых чисел до индекса
    b=size(A) (1,2); //находим количество этих чисел
    plot(index,b,".r"); //строим точку с координатами индекс-количество чисел
end
x=[0:0.01:250]; //строим график y=x/ln(x)
y=x./log(x);
plot (x,y,".b")
time3=timer();

//-------------------------------------------------------
timer();
//делаем матрицу из простых чисел от 10^10 до 10^11
UPGPRIMEMATRIX=primes(10^11);
while UPGPRIMEMATRIX(1,i)<10^10
    i1=i1+1;
//считаем количество элементов ДО 10^10 
end
UPGPRIMEMATRIX(1:i)=[];
//удаляем все ненужные елементы


//создаем матрицу из рандомных 10^7 десятизначных чисел
i2=1;
for i2=1:10^7
//случайное число делаем с десятью знаками после запятой и меняем формат
    v=rand();
    format(13);
    v=v*10^10;
//заносим полученные числа в матрицу
    RANDMATRIX(1,i2)=int(v);
end


c1=1;
c2=1;
totalcount=0;
for i3=1:(size(RANDMATRIX) (1,2))
//каждый элемент полученной матрицы заносим во временную ячейку и проверяем, является ли оно простым
    tmpbox=RANDMATRIX(1,i3);
    for i4=1:(size(UPGPRIMEMATRIX) (1,2))
        if tmpbox==UPGPRIMEMATRIX (1,i4) then
        //если простое, то считаем его
            totalcount=totalcount+1;
        end
    end
end
respersentage=totalcount/(size(RANDMATRIX) (1,2))*100;
disp(respersentage,"persentage of primes among 10^7 random integers is");
time4=timer();

//----------------------------------------------------------------------------

timer();
//создаем матрицу из случайных десятизначных чисел, не делящихся на 2,3,5,7,11
i5=1;
while i5<=10^7
    v=rand();
    format(13);
    v=v*10^10;
    //проверяем на не делимость с помощью МОДУЛО(Деление нацело) и булевых соотношений, заносим в матрицу
    if ~((modulo(v,2)==0)||(modulo(v,3)==0)||(modulo(v,5)==0)||(modulo(v,7)==0)||(modulo(v,11)==0)) then
        ANOTHERRANDMATRIX(1,i5)=int(v);
    end
    i5=i5+1;
end

c3=1;
c4=1;
totalcount=0;
for i6=1:(size(ANOTHERRANDMATRIX) (1,2))
//каждый элемент полученной матрицы заносим во временную ячейку и проверяем, является ли оно простым
    tmpbox=RANDMATRIX(1,i3);
    for i7=1:(size(UPGPRIMEMATRIX) (1,2))
        if tmpbox==UPGPRIMEMATRIX (1,i4) then
        //если простое, то считаем его
            totalcount=totalcount+1;
        end
    end
end
//считаем процент
respersentage=totalcount/(size(ANOTHERRANDMATRIX) (1,2))*100;
disp(respersentage,"persentage of primes among 10^7 random integers that not divides on 2,3,5,7,11 is");
time5=timer();

//-------------------------------------------------------------------------

timer();
//создаем две одинаковых матрицы из простых чисел
P=primes(10^2);
Q=P;
//задаем двойной цикл, который перебирает все комбинации из P-Q
for i8=1:(size(P) (1,2))
    for i9=1:(size(Q) (1,2))
        //для каждой комбинации вводим проверку заданного условия
        if ~(2^P(1,i8)+1==3*Q(1,9)) then
            res1=P(1,i8);
            res2=Q(1,i9);
            disp(res2,'q',res1,'p');
            break;
        end
        break;
    end
    break;
end
time6=timer();

//------------------------------------------------------------------------

        //общий принцип: берем число и делим его на 10^-10 нацело и на 10^1
        //далее второе число домножаем на 10^10 и из первого вычитаем второе(первую цифру)
        //полученное число проверяем на принадлежность матрице со всеми простыми от 10**10 до 10**11
        //если проверка не проходит то увеличиваем на 1 исходную степень делителей и повторяем
timer();
quot1=10^(-9)
quot2=0
Alpha=modulo(%pi,quot1);
for i10=1:(size(UPGPRIMEMATRIX) (1,2))
    if Alpha==UPGPRIMEMATRIX(1,i10); then
        answer=Gamma;
    else
        quot1=10^(-10);
        quot2=1;
        while 1==1
            Alpha=modulo(%pi,quot1);
            Beta=modulo(%pi,quot2);
            Gamma=Alpha-Beta*10^10
            quot1=quot1/10;
            quot2=qiot2/10;
            for i10=1:(size(UPGPRIMEMATRIX) (1,2))
               if Gamma==UPGPRIMEMATRIX(1,i10); then
                    answer=Gamma;
                    break;
               end
           end
       end
    end
end
disp(answer);
time7=timer();


//---------------------------------------------------------

timer();
quot1=10^(-9)
quot2=0
Alpha=modulo(%e,quot1);
for i10=1:(size(UPGPRIMEMATRIX) (1,2))
    if Alpha==UPGPRIMEMATRIX(1,i10); then
        answer=Gamma;
    else
        quot1=10^(-10);
        quot2=1;
        while 1==1
            Alpha=modulo(%e,quot1);
            Beta=modulo(%e,quot2);
            Gamma=Alpha-Beta*10^10
            quot1=quot1/10;
            quot2=qiot2/10;
            for i10=1:(size(UPGPRIMEMATRIX) (1,2))
               if Gamma==UPGPRIMEMATRIX(1,i10); then
                    answer=Gamma;
                    break;
               end
           end
       end
    end
end
disp(answer);
time8=timer();

disp(timme8,time7,time6,time5,time4,time3,time2,time1,'amount of time taken on each task is');
