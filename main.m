%--------------------------------------------------------------------------
% MTBO code v1.0.
% Developed in MATLAB R2021b
% The code is based on the following papers:
% Mountaineering Team-Based Optimization: A Novel Hu-man-based Metaheuristic Algorithm  
% Iman Faridmehr, Moncef L. Nehdi, Iraj Faraji Davoudkhani, Alireza Poolad
% Mathematics (2021)  ISSN: 2227-7390 ,
% https://doi.org/.
% e-mail : faraji.iraj@gmail.com
%--------------------------------------------------------------------------


clear all 
close all
clc

disp('Mountaineering Team-Based Optimization ');

Function_name='F1';    % the number of function
Max_iteration=1000;      % Maximum numbef of iterations
nPop = 100;             % the number of population

% Load details of the selected benchmark function
[lb,ub,dim,fobj]=Get_Functions_details(Function_name);

[Best_score,Best_pos,cg_curve]=MTBO(nPop,Max_iteration,lb,ub,dim,fobj);


figure(1)
subplot(1,2,1);
func_plot(Function_name);
title('Test function')
xlabel('x_1');
ylabel('x_2');
zlabel([Function_name,'( x_1 , x_2 )'])
grid off
subplot(1,2,2);
semilogy(cg_curve,'Color','b')
title('Convergence curve')
xlabel('Iteration');
ylabel('Best flame (score) obtained so far');
axis tight
grid off
box on
legend('MTBO')


display(['The best solution obtained by MTBO is : ', num2str(Best_pos)]);
display(['The best optimal value of the objective funciton found by MTBO is : ', num2str(Best_score)]);

