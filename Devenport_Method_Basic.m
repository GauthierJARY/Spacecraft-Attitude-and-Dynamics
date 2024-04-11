% Devenport's Method uses multiple (N>1) position vectors (e.g. sun, the magnetic
% field, stars vectors)to determine the spacecraft attitude in relation to an
% inertial reference frame.

clear all, clc

%% FILL IN MISSING CODE HERE

% Devenport q-method parameters

%% Weights
w(1) = 1;
w(2) = 1;
%% B matrix
B=w(1)*VB(:,1)*VN(:,1)'+w(2)*VB(:,2)*VN(:,2)';
%% S matrix
S=B+B';
%% Z matrix
Z=[B(2,3)-B(3,2) B(3,1)-B(1,3) B(1,2)-B(2,1)]';
%% sigma
sigma=trace(B)
%% K matrix
K=[S-sigma*eye(3) Z;Z' sigma]

%% largest eigenvalue and corresponding eigenvectors of K
[Qbar,lambda]=eig(K)
[lambdamax,imax]=max(diag(lambda))
qbar=Qbar(:,imax)
betabar=[qbar(4);qbar(1:3)]

%% FILL IN MISSING CODE HERE

