function [ ct ] = quicksort( a, left, right )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
    ct=0;
    if right>left
        p=a(right);
        i=left;
        for j=left:(right-1)
            if a(j)<=p
                temp=a(i);
                a(i)=a(j);
                a(j)=temp;
                i=i+1;
            end
            ct=ct+1;
        end
        temp1=a(i);
        a(i)=a(right);
        a(right)=temp1;
        p=i;
        ct=ct+quicksort(a, left, p-1);
        ct=ct+quicksort(a, p+1, right);
 
end
