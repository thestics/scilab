/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

//очищаем график
clf();
//исходный параметр
MaxIters=100
//пустая матрица для чисел, проходящих 100 итераций
res=[];
//перебор вещественной и комплексной части числа
for a=-2.125:0.001:0.875
    for b=-1.5:0.001:1.5
        //исходный параметр
        z=0;
        c=a+b*%i;
        //количество итераций функции
        for k=1:MaxIters
            z=z^2+c;
            r1=modulo(25*k,256)/256;
            r2=modulo(5*k,256)/256;
            r3=modulo(255-25*k,256)/256;
            if abs(z)<2 then
                continue
            else
                plot(real(z),imag(z),'color',[r1,r2,r3]);
            end
        end
    end
end

