/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

function res=ellipsoid_common(a,b,c)
    clf()
    x=linspace(-a,a,100)
    y=linspace(-b,b,100)
    deff('z=f(x,y)','z=c*(1-x^2/a^2-y^2/b^2)^(1/2)')
    deff('z=F(x,y)','z=-c*(1-x^2/a^2-y^2/b^2)^(1/2)')
    fplot3d(x,y,f,alpha=5,theta=31)
    fplot3d(x,y,F,alpha=5,theta=31)
endfunction


function res=ellipsoid_param(a,b,c)
    clf();
    phi=linspace(0,2*%pi,100);
    theta=linspace(0,2*%pi,100);
    x=[];
    y=[];
    z=[];
    for i=1:length(phi)
        x0=a*cos(phi).*sin(phi);
        y0=b*sin(phi).*sin(theta);
        z0=c*cos(theta);
        x=[[x],x0];
        y=[[y],y0];
        z=[[z],z0];
    end
    plot3d2(x,y,z)
endfunction

function res=hyperboloid_1_common(a,b,c)
    //строим из двух плоскостей("склеиваем две плоскости")
    //однопустотный гиперболоид
    x=linspace(-10,10,100)
    y=linspace(-10,10,100)
    z=linspace(-10,10,100)
    scf(2)
    clf(2)
    deff('z = f1(x,y)','z = sqrt((-1+x^2/a^2+y^2/b^2)*c^2)')  
    deff('z = f2(x,y)','z = -sqrt((-1+x^2/a^2+y^2/b^2)*c^2)')
    fplot3d(x,y,f1,alpha = 5,theta = 31)
    fplot3d(x,y,f2,alpha = 5,theta = 31)
endfunction

function res=hyperboloid_2_common(a,b,c)
    //двопустотный гиперболоид
    x=linspace(-10,10,100)
    y=linspace(-10,10,100)
    z=linspace(-10,10,100)
    scf(3)
    clf(3)
    deff('z = f(x,y)','z = sqrt((1+x^2/a^2+y^2/b^2)*c^2)')   
    deff('z = f2(x,y)','z = -sqrt((1+x^2/a^2+y^2/b^2)*c^2)')  
    fplot3d(x,y,f,alpha = 5,theta = 31)
    fplot3d(x,y,f2,alpha = 5,theta = 31)
endfunction

function res=elliptic_paraboloid(p,q)
    //елиптический параболоид
    x=linspace(-10,10,100)
    y=linspace(-10,10,100)
    z=linspace(-10,10,100)
    scf(4)
    clf(4)
    deff('z = f(x,y)','z = (x^2/p+y^2/q)/2')   
    fplot3d(x,y,f,alpha = 5,theta = 31)  
endfunction

function res=hyperbolic_paraboloid(p,q)
    //гиперболический параболоид
    x=linspace(-10,10,100)
    y=linspace(-10,10,100)
    z=linspace(-10,10,100)
    scf(5)
    clf(5)
    deff('z = f(x,y)','z = (x^2/p-y^2/q)/2')  
    fplot3d(x,y,f,alpha = 5,theta = 31) 
endfunction
