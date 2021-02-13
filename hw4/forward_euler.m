function [u,t]=forward_euler(f,t0,dt,n,u0)
% numerical solution of the differential equation u'=f(u), u(t0)=y0 by the forward Euler method
% in:
%   f     function handle
%   t0    initial time
%   dt     time step length
%   n     number of timesteps
%   u0    initial value at time t0
% out:
%   u     vector length n+1 of solutions
%   t     vector lengtH n+1 of times

u=zeros(1,n+1); % create output vectors
t=zeros(1,n+1); % the initial value is at index 1
u(1)=u0;  % 
t(1)=t0;
for k=1:n
    t(k+1)=t(k)+dt;   % the end time of timestep 
    % your code to compute u(k+1) from u(k) comes here
    
    
end
end