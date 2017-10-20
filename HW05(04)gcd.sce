/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function [k,Gcd]=euclidalgo(a,b)
    k=0
    while %T
        c=modulo(a,b);
        a=b;
        b=c;
        k=k+1;
        if c==0 then
            Gcd=a
            disp(a,'gcd');
            disp(k,'amount of steps');
            break
        end
    end
endfunction

