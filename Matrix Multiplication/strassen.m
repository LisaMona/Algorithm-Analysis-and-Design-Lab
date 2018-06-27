function [ C co] = strassen( A, B, co )
    n = size(A, 1);

    if (n == 1)
        C = A * B;
        co = co + 1;
     
    else
        A11 = A(1: n/2 , 1: n/2);
        A12 = A(1: n/2 , n/2+1: n);
        A21 = A(n/2+1: n , 1: n/2);
        A22 = A(n/2+1: n , n/2+1: n);
        B11 = B(1: n/2 , 1: n/2);
        B12 = B(1: n/2 , n/2+1: n);
        B21 = B(n/2+1: n , 1: n/2);
        B22 = B(n/2+1: n , n/2+1: n);
        
        [M1 co] = strassen(A11 + A22, B11 + B22, co);
        [M2 co] = strassen(A21 + A22, B11, co);
        [M3 co] = strassen(A11, B12 - B22, co);
        [M4 co] = strassen(A22 , B21 - B11, co);
        [M5 co] = strassen(A11 + A12, B22, co);
        [M6 co] = strassen(A21 - A11, B11 + B12, co);
        [M7 co] = strassen(A12 - A22, B21 + B22, co);
        
        C(1: n/2 , 1: n/2) = M1 + M4 - M5 + M7;
        C(1: n/2 , n/2+1: n) = M3 + M5;
        C(n/2+1: n , 1: n/2) = M2 + M4;
        C(n/2+1: n , n/2+1: n) = M1 + M3 - M2 + M6;
        
        
    end
end

