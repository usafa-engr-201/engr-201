clearvars; clc; 

% example--modify/expand as necessary
[T, a, P, rho] = atmosphere_model(2006)
[T, a, P, rho] = atmosphere_model(100)


% % also include your out-of-range inputs
% % run them each at least once, but you may have to comment them
% % so the file runs correctly
% 
% [T, a, P, rho] = atmosphere_model(-5)
% [T, a, P, rho] = atmosphere_model(920000)