 f=@(x) 100*(x(2)-x(1)^2)^2+(1-x(1))^2;
df=@(x) [400*x(1)^3-400*x(1)*x(2)+2*x(1)-2;200*(x(2)-x(1)^2)];
ddf=@(x) [1200*x(1)^2-400*x(2)+2 -400*x(1);-400*x(1) 200];


f2=@(x) 0.01*x(1)^2+x(2)^2;
df2=@(x) [0.02*x(1);2*x(2)];
ddf2=@(x) [0.02 0;0 2];


fhesse=fHesse(df,[1;1]);
forward=SOFD(f,[1;1]);
norm(fhesse-forward)
%  
% x0=[0.2;0.2];
% res=Newton(f,x0,50);
