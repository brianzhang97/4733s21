function err=trapezoidal_test

% test if the trapezoidal code works on the equation
% u' = a*u, u(0)=1 on the interal [0,1] with dt=0.1 for a=-1 and a=-25
% The solution is u(t)=exp(a*t) 
n=10;
dt = 1/n;     % the time step length 
a = -1;        % the coefficient
[u,t]=trapezoidal(a,0,dt,n,1);
err(1)=u(n+1)-exp(a)
figure(1),plot(t,u),hold on,fplot(@(t)exp(a*t),[0,1]),hold off  % you can uncomment this to plot a picture for a visual check

a = -25;        % new coefficient, same dt and n
[u,t]=trapezoidal(a,0,dt,n,1);
err(2)=u(n+1)-exp(a)
figure(2),plot(t,u),hold on,fplot(@(t)exp(a*t),[0,1]),hold off % you can uncomment this to plot a picture for a visual check

end