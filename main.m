clear;
close all;
clc;

N=8;

% assuming all the distance and constant are of order e-10 to avoid error due to very small floating number
Ep=0.165; % exact value 0.165e-20 Joule per particle or 0.238 kcal per mole
Sigma=3.4; % exact value 3.4e-10 meter

% config=importdata('uniform.mat');
% check_config(config,Sigma)


config=generate_config(N,Sigma);

validation=check_config(config,Sigma);
if (validation==1)
	disp('System is valid.');
else
	disp('System is not valid.');
end
	
E=energy_config(config,Sigma,Ep);
disp(strcat('Energy of system (of order e-20)::',num2str(E)));

