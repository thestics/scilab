/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

//обозначаем четыре пустые матрицы, в которых будут собержатся комплексные числа
a_mtrx=[];
b_mtrx=[];
c_mtrx=[];
d_mtrx=[];

clf();
//двойным циклом перебираем все значения х,у, в данном случае это вещественная и мнимая часть числа
for x=-5:0.1:5
    for y=-5:0.1:5
        //находим собственно комплексное число
        a=x+y*%i;
        //ему обратное
        b=1/a;
        //его квадрат
        c=a^2;
        //отношение сумм разностей с единицей
        d=(1+a)/(1-a);
        //добавляем в соответствующую вектор-матрицу
        a_mtrx=[a_mtrx,a];
        b_mtrx=[b_mtrx,b];
        c_mtrx=[c_mtrx,c];
        d_mtrx=[d_mtrx,d];
    end
end
//каждый график для удобства отделяем с помощью scf
scf(0);
//за аргумент берем вещественную часть, за значение - мнимую и строим как некоторую функцию
plot(real(a_mtrx),imag(a_mtrx),'x');
scf(1);
plot(real(b_mtrx),imag(b_mtrx),'rx');
scf(2);
plot(real(c_mtrx),imag(c_mtrx),'gx');
scf(3)
plot(real(d_mtrx),imag(d_mtrx),'bx');
