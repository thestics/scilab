/* Homework done by Kiev National University 
mechanical mathematic department student 
Danil Kovalenko*/

A=[3,6,12;7,2,1;12,3,62];
B=[7,5,13;51,42,61;32,1,0];

sum=A+B;
prod1=A*B;
prod2=B*A;

disp(A,'A');
disp(prod1,'prod of A and B');
disp(prod2,'prod of B and A');

A(1,:)=A(2,:).*5
disp(A,'Modified marix A');
A(2,2)=A(1,1)+1;
disp(A,'Another modified matrix A');
