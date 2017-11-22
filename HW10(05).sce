/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function res=mut_pos(A1,B1,C1,D1,A2,B2,C2,D2,A3,B3,C3,D3)
    //собираем матрицу из коэф-в для соответсвующих пл-й
    R=[A1,B1,C1,D1;A2,B2,C2,D2;A3,B3,C3,D3];
    //вводим булевы переменные для проверки на пропорциональность
    b_1_2=(A1/A2 == B1/B2) && (B1/B2 == C1/C2) && (C1/C2 == D1/D2);
    b_2_3=(A2/A3 == B2/B3) && (B2/B3 == C2/C3) && (C2/C3 == D2/D3);
    b_1_3=(A1/A3 == B1/B3) && (B1/B3 == C1/C3) && (C1/C3 == D1/D3);
    //вычисляем ранг матрицы
    tmp=rank(R);
    //проверяем соотв-е случаи
    if tmp == 1 then
        res='parallel';
    elseif tmp == 2 then
        res='two parallel and one intersects both of them';
    elseif (tmp == 3) && ~(b_1_2) && ~(b_1_3) && ~(b_2_3) then
        res='three intersects with lines, no intersect point exist';
    elseif tmp == 3 then
        res='three intersects in one point';
    end
endfunction
