/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

//очищаем график
clf();
//исходный параметр
MaxIters=50
//пустая матрица для чисел, проходящих 50/100 итераций
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
        end
        //проверка на необходимость плотить
        if (abs(z)<2) then
            res=[[res],c]
        end
    end
end
plot(real(res),imag(res),'x')
