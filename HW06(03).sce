/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function res1=common2parametric(A,B,C)
    //находим напрямляющицй ветор
     u=[-B,A];
     //пусть наша произвольная точка -- точка пересечения с ОУ, тогда х=0 а у=-с/в соответсвенно
     y0=-C/B;
     //сделаем наши уравнения строками
     s1='x='+string(-B)+'t';
     s2='y='+string(y0)+"+"+string(A)+'t';
     //выведем их
     disp(s2,s1);
     res1='';
endfunction


function res2=parametric2common(x0,m,y0,n)
    //из напрямляющего вектора находим нормаль, координаты которой в точности совпадают с первыми двумя коэфами
    B=-m;
    A=n;
    //С найдем из канонического уравнения прямой как точку пересечения с оУ(х=0):
    //представим каноническое уравнение в явном виде и подставим х=0
    C=-x0*n/m+y0;
    //таким же образом сделаем строку
    s=string(A)+'x+('+string(B)+')y+('+string(C)+')=0';
    disp(s);
    res2='';
endfunction
