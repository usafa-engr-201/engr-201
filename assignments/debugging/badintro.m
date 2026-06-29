%==========================================================================
%                           Badintro
%
% This file contains errors. Fix them. 
% After you successfully run this file, compare your first output to 
% https://www.wolframalpha.com/input?i=Trajectory+At+80+Degree+At+32+m%2Fs
% 
%  Continue to identify and fix errors until your output is correct. 
%
%  Given: 
%  initial velocity and elevation angle of a short-range projectile
% 
% Find: 
% - time of flight
% - maximum height
% - distance traveled  
% 
% Assume: 
% - flat earth
% - constant gravitational acceleration
% - no drag
%
%    Author: 
%       Capt Brown, DFAS, x4431,   17 Jan 96
%          Modified by Capt Sandfry   24 Jun 96
%          Modified by Lt Col Tom Yoder for Matlab
%          Modified by Maj Joel Miller for A201
%          Modified by Dr Scott Dahlke for A201
%          Modified 2024-12 by Lt Col Jordan Firth for Engr 201 
%
%    Input: 
%       none
%
%   Variables   : 
%      speed_initial    - Initial velocity magnitude    m/sec
%      angle_deg        - Elevation angle               deg
%
%    Output       :
%      flight_time    - Time of Flight                     sec
%      distance       - Distance Traveled                  m
%      altitude_max   - Maximum Height                     m
%
%    Constants    :
%      pi         - 3.1415 . . .
%      g          - gravitational acceleration            m/sec^2
%
%    Coupling     : None
%
%    References   :
%       https://www.wolframalpha.com/input?i=Trajectory+80+Deg+32+m%2Fs
%==========================================================================

% Establish variables the velocities and angle of launch for the ballistic
% object

speed_initial = [32; 175; 175];
angle_deg = [80; 45; 50];


% Assign Constant Values 
accel_grav = 9.81;

% Read in Data (Velocity in m/s, el angle in deg) 
for ii = 1:5
   
   % Main Calculations
   angle_rad = angle_deg(ii,1) * Pi/180;
   speed_x0 = speed_initial(1,ii) * cos[angle_Rad];
   speed_y0 = speed_initial(ii) * sin[angle_RAD];
   flight_time(ii,1) = ((speed_y0)/G))^2; 
   altitude_max(ii,1) = speed_y0^2/2 * accel_grav; 
   distance(ii,1) = speed_x0 * flight_time(ii); 
   
end

case_num = (1:3)';
output = table(case_num, flight_time, altitude_max, distance)
