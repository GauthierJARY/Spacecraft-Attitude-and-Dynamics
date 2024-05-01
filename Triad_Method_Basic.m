% ON WORK - SOON UPADTE WITH FUNCTIONS AND RUNNING CODE
% TRIAD Method uses two position vectors (e.g. sun vector and the magnetic
% field vector)to determine the spacecraft attitude in relation to an
% inertial reference frame.

clear all, clc


%% FILL IN MISSING CODE HERE

% TRIAD frame

% Body frame
T1B = V1B/norm(V1B);
T2B = skew(V1B)*V2B;
T2B = T2B/norm(T2B);
T3B = skew(T1B)*T2B;
T3B = T3B/norm(T3B);

% Inertial frame
T1N = V1N/norm(V1N);
T2N = skew(V1N)*V2N;
T2N = T2N/norm(T2N);
T3N = skew(T1N)*T2N;
T3N = T3N/norm(T3N);

%% FILL IN MISSING CODE HERE



