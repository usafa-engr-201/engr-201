% plot_atmosphere.m
% (not a function)
% 
% driver script for Engr 201 assignment
% creates plots comparing results from student 
% - student atmosphere_model()
% - matlab's built-in (aerospace toolbox) atmosisa()
%
% NOTE: the 2 functions have different output syntax
% [T, P, rho, a] = atmosphere_model(alt)
% [T, a, P, rho] = atmosisa(alt)

% ## author/version history
% 2025-05 
% created by Lt Col Jordan Firth, USSF
% 
% 2026-01
% modifiedy by Lt Col Jordan Firth, USSF
%   - added documentation
%   - filled-in more gaps
%
% ## inputs
% 
% | symbol | ASCII | description | units | value/range   |
% | ------ | ----- | ----------- | ----- | ------------- |
% | alt    | alt   | altitude    | m     | 0 < e < 91000 |
% 
% ## outputs
% 
% | symbol | ASCII | description    | units  |
% | ------ | ----- | -------------- | ------ |
% | T      | T     | temperature    | K      |
% | P      | P     | pressure       | Pa     |
% | ρ      | rho   | density        | km/m^3 |
% | a      | a     | speed of sound | m/s    |
% 
% ## constants
% 
% | symbol | ASCII | description                          | value      | units  |
% | ------ | ----- | ------------------------------------ | ---------- | ------ |
% | g      | g     | standard gravitational acceleration  | 9.81       | m/s^2  |
% | R      | R     | specific gas constant                | 287.052874 | J/kg/K |
% | γ      | gamma | gas heat capacity ratio              | 1.4        |        |
% 
% ## coupling
% none
% 
% ## references
% AE 206 assignment instructions
% 
% ## process
clearvars; clc; 

% create empty tables to store atmosphere data
student_model = array2table(zeros(1,5), 'VariableNames', ... 
    ["alt_m", "T_K", "P_Pa", "rho_kgm3", "a_ms"] ); 
% create a copy of the empty table to store values from matlab's model
matlab_model = student_model; 

% create vector of altitudes
alts = 0:100:91e3; 

% calculate student model and matlab model (atmosisa) results for each
% altitude
for ii = 1:length(alts) 
    % student model
    [T, a, P, rho] = atmosphere_model(alts(ii)); 
    student_model{ii, :} = [alts(ii), T, P, rho, a]; 
    
    % matlab model
    [T, a, P, rho] = atmosisa(alts(ii));
    matlab_model{ii, :} = [alts(ii), T, P, rho, a]; 
    
end % for

%%
% plot

h1 = figure(1); clf; % open figure 1, clear current figure
    % create a 2x2 layout
    subfig = tiledlayout(2,2);
    
    % Temperature
    nexttile % move to next tile (first tile)

    hold on % allow multiple plots on graph 
    % -- won't clear previous plot with each use of plot() command

    % plot(vector-of-x-values, vector-of-y-values, 'options')
    plot(student_model.T_K, student_model.alt_m/1000, 'DisplayName', 'student model')
    plot(matlab_model.T_K, matlab_model.alt_m/1000, '--', 'DisplayName', 'matlab model')
    xlabel('Temperature, K')
    ylabel('Altitude, km')
    legend % only need legend on one of the plots, since legends are all the same
    
    % Pressure
    nexttile
    
    % Density

    % Speed of Sound

    % add plot title
    sgtitle('1976 standard atmosphere')
    
%% save figure
saveas(h1, 'atmosphere_model.svg')