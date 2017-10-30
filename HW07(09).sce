/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

//задаем счетчики для количества каждого из возможных чисел
c0=0;
c1=0;
c2=0;
c3=0;
c4=0;
c5=0;
c6=0;
c7=0;
c8=0;
c9=0;
x=3
a=87303715462841;
b=5923248677;
n=10;
//рекурентно 1000 раз считаем наше число
for i=1:1000
    m=modulo(a*x+b,n);
    x=m;
    disp(x);
    //проверяем чему оно равно, увеличиваем соответствующий счетчик
    select x
    case 0
        c0=c0+1;
    case 1 
        c1=c1+1;
    case 2 
        c2=c2+1;
    case 3 
        c3=c3+1;
    case 4
        c4=c4+1;
    case 5
        c5=c5+1;
    case 6 
        c6=c6+1;
    case 7 
        c7=c7+1;
    case 8 
        c8=c8+1;
    case 9
        c9=c9+1;
    end
end
//для каждого считаем процент
per0=c0/10;
per1=c1/10;
per2=c2/10;
per3=c3/10;
per4=c4/10;
per5=c5/10;
per6=c6/10;
per7=c7/10;
per8=c8/10;
per9=c9/10;
//выводим процент
disp('%',per0,'0');
disp('%',per1,'1');
disp('%',per2,'2');
disp('%',per3,'3');
disp('%',per4,'4');
disp('%',per5,'5');
disp('%',per6,'6');
disp('%',per7,'7');
disp('%',per8,'8');
disp('%',per9,'9');
