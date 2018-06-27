function x = bubblesort(x)
    n= length (x);
    for i=1: n
        flag =1;
        for j=1:n-1
            if x(j)>x(j+1)
                temp=x(j);
                x(j)=x(j+1);
                x(j+1)=temp;
                flag=0;
            end
        end
        if flag==1
            disp(sprintf ('no. of comparisions=%d',i));
            return;
        end
    end 