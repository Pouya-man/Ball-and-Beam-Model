clc
clear all
close all
syms s
%%%maghadir parametr ha.
m = 0.020;
R = 0.024;
g = -9.8;
L = 0.38;
d = 0.045;
J = ((1/2)*m*R^2)-((1/2)*m*0.014^2)
% tf of plant(ball & beam & servo motor) 
sys1=tf([-d*g],[(1+(J/(m*R^2))) 0 0]) 
%PID Gain:
Kp =10.8981700926178;
Ki=1.99076726575988;
Kd=14.9151175793385;
N=13.6997538794225;
Tf=1/N;
% PID controller
C= pid(Kp,Ki,Kd); 
% main sys
sys_cl=feedback(C*sys1,1);
%__________________________________________
sisotool(sys_cl)
%open simulink model
open_system('tf11')
%run simulink model
%sim('tf11')
