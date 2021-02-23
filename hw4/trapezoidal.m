function [u,t]=trapezoidal(a,t0,dt,n,u0)
% numerical solution of the differential equation y'=a*u, u(t0)=u0 by the
% trapezoidal method
% in:
%   a     coefficient
%   t0    initial time
%   dt     time step length
%   n     number of timesteps
%   u0    initial value at time t0
% out:
%   u     vector of solutions
%   t     vector of times
u=zeros(1,n+1); % create output vectors
t=zeros(1,n+1); % the initial value is at index 1
u(1)=u0;  % 
t(1)=t0;
for k=1:n
    t(k+1)=t(k)+dt;   % the end time of timestep 
    % your code to compute u(k+1) from u(k) comes here
    u(k+1)=u(k)+(dt/2)*(a*u(k)+a*u(k+1))
    
    % you need find u(k+1) by solving the equation
    % u(k+1) = u(k) + (dt/2)*(f(t(k),u(k))+f(t(k+1),u(k+1))) 
    % with f(t,u)=a*u
end