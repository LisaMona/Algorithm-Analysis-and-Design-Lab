%(a)Program for random data:
u=zeros(1,10);
v=zeros(1,10);
w=zeros(1,10);
x=zeros(1,10);
y=zeros(1,10);
z=zeros(1,10);


temp=0;
m=1;
for i=10:10:100
    A=round(rand(1,i)*100);
    B=zeros(1,i);
    x(m)=i;
    y(m)=selection(A,i);
    z(m)=insertion(A,i);
    w(m)=bubble(A,i);
    [B,u(m)]=quick(A,1,i,0);
    [v(m),B]=merge(A); 
    m=m+1;
end
disp (A);
plot(x,y,x,z,x,w,x,u,x,v);
grid on;
legend('selection sort','insertion sort','bubble sort','quick sort','merge sort');
xlabel('no.of array elements');
ylabel('no.of comparisons');
title('sorting algorithm analysis');    

 
