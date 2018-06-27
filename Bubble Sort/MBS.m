function [ count ] = MBS( y,n )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
count = 0;
for i = 1:n 
    flag = 0;
    for j = 1:n-i
        count = count+1;
        if y(j)>y(j+1)
            flag = 1;
            temp = y(j);
            y(j) = y(j+1);
            y(j+1) = temp;
        end
    end
    if flag==0
        break;
    end
end
 
end

