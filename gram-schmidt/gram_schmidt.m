function [Q R] = gram_schmidt(A,val)
    [~, N] = size(A);
    V = A;
    R = zeros(N);

    for i = 1:N         
        R(i,i) = norm(V(:,i));
        V(:,i) = V(:,i)/R(i,i);
        vi = V(:,i);
        
        for j = i+1:N
            if strcmpi(val,'mgs')
                R(i,j) = vi'*V(:,j);
            else
                R(i,j) = vi'*A(:,j);
            end
            %only the above 'V' needs to be changed to 'A' to change this 
            %routine to the classical gram-schmidt. This drives home the point 
            %that in modified gram schmidt, you subtract the components of the 
            %updated vectors and  not the original vectors from A
            V(:,j) = V(:,j) - R(i,j)*vi;
        end       
        
    end
    Q = V;
        
end

%convince yourselves that this method actually works!