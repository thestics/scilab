/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function res=multiple_roots(r)
    //коэфы идут по убыванию
    p=poly(r,'x','coeff');
    q=derivat(q);
    gcd=hrmt([p,q]);
    if gcd == 1 then
        res='no multiple roots exist';
    else 
        res='there is multiple roots';
    end
endfunction
