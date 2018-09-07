function [Q R] = mgs(A)
    [~, N] = size(A);
    Q = A;
    R = zeros(N);

    for i = 1:N         
        R(i,i) = norm(Q(:,i));
        Q(:,i) = Q(:,i)/R(i,i);
        vi = Q(:,i);
        
        for j = i+1:N
            R(i,j) = vi'*Q(:,j);
            %only the above 'Q' needs to be changed to 'A' for classical
            %which drives home the point that in modified gram schmidt,
            %you subtract the components of the updated vectors and
            %not the original vectors from A
            Q(:,j) = Q(:,j) - R(i,j)*vi;
        end       
        
    end
        
end
