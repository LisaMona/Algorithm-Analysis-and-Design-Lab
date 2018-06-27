z = zeros(1,1000)
i=1
for n = 1:1000
    arr = round(rand(1,n)*100);
   z(i)= n
    B = arr;
    x(i) = BS(B,n);
    y(i) = MBS(arr,n);
  
    i=i+1
 
end
plot(z,y,z,x);
title('Performance analysis of Sorting');
xlabel('No. of elements');
ylabel('No. of comparisions');
disp('Analysis of bubble_sorts');
legend('Modified Bubble Sort','Bubble Sort');
grid on;
