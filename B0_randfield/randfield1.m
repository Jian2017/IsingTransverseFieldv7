function h=randfield1(L,ha,hw,R)

% randfield1 is rectangle ditribution
% R is the trial number R=1,2,3,...

rng(R+100);
h=ones(1,L)*ha+(rand(1,L)-0.5)*hw;

return