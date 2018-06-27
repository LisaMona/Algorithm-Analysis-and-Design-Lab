function [ x,c1 ] = quick( x,low,up,c1)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

if low<up
    pivot=low;
    i=low;
    j=up;
    while i<j
        c1=c1+1;
        while x(i)<=x(pivot) && i<up
            i=i+1;
            c1=c1+1;
            
        end
        c1=c1+1;
        while x(j)>x(pivot)
            j=j-1;
            c1=c1+1;
        end
        c1=c1+1;
        if i<j
            temp=x(i);
            x(i)=x(j);
            x(j)=temp;
        end
    end
    temp=x(pivot);
    x(pivot)=x(j);
    x(j)=temp;
[x,c1]=quick(x,low,j-1,c1);
[x,c1]=quick(x,j+1,up,c1);
end

