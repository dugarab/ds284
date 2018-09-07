N = 100;
[Q1, R] = qr ( rand( N ) );
[Q2, R] = qr ( rand( N ) );
A = Q1 * diag (2.^[ -1: -1: -N] ) * Q2;
% creating a vector of 
[Qc, Rc] = cgs (A);
[Qm, Rm] = mgs (A);

subplot(2,1,1);
plot([1:N], log2 ( diag (Rc)' ),[1:N] , log2(2.^[ -1: -1: -N]))
title('Rc from Classical Gram-Schmidt');
xlabel('N');
ylabel('Diagonal Entries');
legend('Rc','D','Location','southwest')

subplot(2,1,2) 
plot ([1:N], log2 ( diag (Rm)' ),[1:N] , log2(2.^[ -1: -1: -N]))
title('Rm from Modified Gram-Schmidt');
xlabel('N');
ylabel('Diagonal Entries');
legend('Rm','D','Location','southwest')