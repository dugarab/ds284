function [Q R] = cgs(A)
    [~, N] = size(A);
    R = zeros(N);
    i=1;
    R(i,i) = norm(A(:,i));
    A(:,i) = A(:,i)/R(i,i);
    for i = 2:N            
        for j = 1:i-1
            vi = A(:,i);
            R(i,j) = vi'*A(:,j);
            vi = vi - R(i,j)*A(:,j);
        end   
        
        R(i,i) = norm(vi);
        A(:,i) = vi/R(i,i); 
        
    end
    Q = A;
        
end
