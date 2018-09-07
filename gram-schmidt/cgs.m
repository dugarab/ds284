function [Q R] = cgs(A)
    [~, N] = size(A);
    Q = A;
    R = zeros(N);

    for i = 1:N         
        R(i,i) = norm(Q(:,i));
        Q(:,i) = Q(:,i)/R(i,i);
        vi = Q(:,i);
        
        for j = i+1:N
            R(i,j) = vi'*A(:,j);
            %only the above 'A' needs to be changed to 'Q' for modified
            %which drives home the point that in classical gram schmidt,
            %you subtract the components from original vectors of A
            Q(:,j) = Q(:,j) - R(i,j)*vi;
        end       
        
    end
        
end
