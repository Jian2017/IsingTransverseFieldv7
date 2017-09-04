addpath('./B0_randfield/');

x.L=60;

x.BC=0;
x.RR=1;

x.g=ones(x.L,x.RR)*1.0010000;

% for R=[1:x.RR]
%     x.g(:,R)=randfield2(x.L,0.6, 0.5 ,1.5,R);
% 
% end



  x.m1=ones(x.L,x.RR)*0;
%   x.m1(1:2:end)=0.8;
%   x.m1(2:3:end)=0.4;


x.m2=ones(x.L,x.RR)*0.0;

x.II=round(x.L/4);
x.Dist=round(x.L/2); % length of correlation distance
x.t0=0;  % starting time
x.dt=1;   % time interval
x.step=x.L/2; % length of correlation time
x.eigen=6;


save('input.mat','x');
 

run;