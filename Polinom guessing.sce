function res=Adaptive_queries()
    a=[]
    p=input('Value at x=1')+1
    y=input('Value at х='+string(p)+':')
    while y ~= 0
        tmp=modulo(y,p)
        y=(y-tmp)/p
        a(length(a)+1)=t 
    end
    res=poly(a,'x','coeff')
endfunction
