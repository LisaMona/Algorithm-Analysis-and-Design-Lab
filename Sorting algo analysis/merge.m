function [c2,arr] = merge(arr)
    if numel(arr) <= 1
        c2=0;
        return
    else
        c2=0;
        m = ceil(numel(arr) / 2);
        low = arr(1:m);
        up = arr(m+1:end);
        ctr=0;
        [ctr,low] = merge(low);
        c2=c2+ctr;
        [ctr , up] = merge(up);
        c2=c2+ctr;
        if low(end) <= up(1)
            arr = [low up];
            return
        end
        ctr = 1;
        while (numel(low) > 0) && (numel(up) > 0)
            c2=c2+1;
            if(low(1) <= up(1))
                arr(ctr) = low(1);
                low(1) = [];
            else
                arr(ctr) = up(1);
                up(1) = [];
            end           
            ctr = ctr + 1;   
        end
 
        if numel(low) > 0
            arr(ctr:end) = low;
        elseif numel(up) > 0
            arr(ctr:end) = up;
        end        
    end 
end

