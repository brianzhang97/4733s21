function err=forward_euler_test

% test if the forward_euler code works on the equation
% u' = -u, u(0)=1 on the interal [0,1].
% The solution is u(t)=exp(-t) so for we expect u at 1 approximmately -e.
f= @(u) -u;   % function handle for f(u)=-u
n=100;       % number of time steps
dt = 1/n;     % the time step length 
[u,t]=forward_euler(f,0,dt,n,1);
% The solution is u(t)=exp(-t) so for we expect u at 1 approximmately -e.
err=u(n+1)-exp(-1) % the result should be a small number, decreasing as const*1/n
% plot(t,u)  % you can uncomment this to plot a picture for a visual check
end