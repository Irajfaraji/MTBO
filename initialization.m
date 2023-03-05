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


function X=initialization(SearchAgents_no,dim,ub,lb)

Boundary_no= size(ub,2); % numnber of boundaries

% If the boundaries of all variables are equal and user enter a signle
% number for both ub and lb
if Boundary_no==1
    X=rand(SearchAgents_no,dim).*(ub-lb)+lb;
end

% If each variable has a different lb and ub
if Boundary_no>1
    for i=1:dim
        ub_i=ub(i);
        lb_i=lb(i);
        X(:,i)=rand(SearchAgents_no,1).*(ub_i-lb_i)+lb_i;
    end
end