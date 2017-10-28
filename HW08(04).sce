/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function d=distance2line(x0,y0,A,B,C)
    //расстояние от точки до прямой через нормальное уравнене прямой
    d=abs(A*x0+B*y0+C)/sqrt(A^2+B^2);
    disp(d,'distance: ');
endfunction
