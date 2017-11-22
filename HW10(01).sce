/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function bool=isonesurf(x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4)
    clf();
    //берём три вектора фиксируя одну из точек через остальные три
    a=[x2-x1,y2-y1,z2-z1];
    b=[x3-x1,y3-y1,z3-z1];
    c=[x4-x1,y4-y1,z4-z1];
    //находим их векторное произведение ч-з определитель
    res=det([a;b;c]);
    //присваивваем соответсвующие булевы переменные
    if res==0 then
        bool=%t;
    else
        bool=%f;
    end
    //собираем координаты отдельно и параметрического задания 
    //первую координату берем ещё раз в конце, что бы соединить полученую линию(если таковая образуется)
    X=[x1,x2,x3,x4,x1];
    Y=[y1,y2,y3,y4,y1];
    Z=[z1,z2,z3,z4,z1];
    param3d(X,Y,Z);
endfunction
