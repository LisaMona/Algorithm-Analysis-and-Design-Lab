function [ c ] = insertion( a,i )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
c=0;
for j=2:1:i
    key = a(j);
    k=j-1;
    while((k>0) && (a(k)>key))
           c=c+1;
           a(k+1)=a(k);
           k=k-1;
    end    
  a(k+1)= key;     


end

