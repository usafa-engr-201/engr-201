function [T, a, P, rho] = atmosphere_model(alt)
% atmosphere_model
% [T, a, P, rho] = atmosphere_model(alt)
% Simple linear atmosphere model. 
% Returns atmospheric parameters based on altitude. 

% ## author
% Lt Col Jordan Firth, USSF
% 2025-05
% 
% ## version
% 1.0
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
% | g      | g     | standard gravitational accelerations | 9.81       | m/s^2  |
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

% Check for input altitude in range (0-91 km)

if    % (you complete)
    % ⋮ (you complete)
    error('display useful error message indicating input out of range') 
end % if altitude is out of range
 
% Create lookup table of altitude range boundaries and parameters. 
% 
% | num | region             | model      | h1, m     | T1, K     | Th, K/m         | P1, Pa        |
% |     |                    |            | begin alt | base temp | temp lapse rate | base pressure |
% | --- | ------------------ | ---------- | -- ------ | --------- | --------------- | --------------|
% | 1   | Troposphere        | linear     | 0         | 288.15    | -0.0065         | 1.0132e+05    |
% | 2   | Tropopause         | isothermal | 11000     | 216.65    | 0               | 22632         |
% | 3   | Lower Stratosphere | linear     | 20000     | 216.65    | 0.001           | 5474.9        |
% | 4   | Upper Stratosphere | linear     | 32000     | 228.65    | 0.0028          | 868.02        |
% | 5   | Stratopause        | isothermal | 47000     | 270.65    | 0               | 110.91        |
% | 6   | Lower Mesosphere   | linear     | 51000     | 270.65    | -0.0028         | 66.939        |
% | 7   | Upper Mesosphere   | linear     | 71000     | 214.65    | -0.002          | 3.9564        |
% | 8   | Mesopause          | isothermal | 84852     | 187.87    | 0               | 0.3734        |
% (NOTE: model ends at 91 km)

data={ ...
"num", "region"         , "model"      ,"h1_m","T1_K","Th_K_m","P1_Pa"
1, "Troposphere"        , "linear"     ,0,		288.15,	-0.0065,101000
2, "Tropopause"         , "isothermal" ,11000,	216.65,	0,		22632
3, "Lower Stratosphere" , "linear"     ,20000,	216.65,	0.001,	5474.9
4, "Upper Stratosphere" , "linear"     ,32000,	228.65,	0.0028,	868.02
5, "Stratopause"        , "isothermal" ,47000,	270.65,	0,		110.91
6, "Lower Mesosphere"   , "linear"     ,51000,	270.65,	-0.0028,66.939
7, "Upper Mesosphere"   , "linear"     ,71000,	214.65,	-0.002,	3.9564
8, "Mesopause"          , "isothermal" ,84852,	187.87,	0,		0.3734}; 

atmo = cell2table(data(2:end, :));
atmo.Properties.VariableNames = [data{1, :}]; 
 
% identify region that includes input altitude
index = find(atmo.h1_m <= alt, 1, 'last');

% ID region parameters
h_1 = atmo.h1_m(index); 
% ⋮ (you complete)

% % calculate temperature and pressure
% for linear regions:
if atmo.model(index) == "linear"
    % ⋮ (you complete)

% for isothermal regions
elseif    % (you complete)
    % ⋮  % you complete

else
    error('cannot identify region type')

end % if linear/isothermal

% calculate density, speed of sound
% ⋮

end % function atmosphere_model