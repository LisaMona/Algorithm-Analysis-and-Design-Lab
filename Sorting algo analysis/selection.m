%selection sort
function [x] = selection( a,n)
x=0;
s=0;
t=0;
for k=1:n
    s=n;
    for j=k+1:n
         x=x+1;
        if a(j)<a(s)
            s=j;
           
        end
    end
    t=a(k);
    a(k)=a(s);
    a(s)=t;
end
 
 
end


