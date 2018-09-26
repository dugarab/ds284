N = 100; 
M = 1.5*N;
[Q1, ~] = qr(randn(N,N));
Q1 = Q1(:,1:M);
[Q2, ~] = qr(randn(M,M));
S = k+1 : -k/(M-1) : 1;

A = Q1*diag(S)*Q2;

b = randn(N,1);

