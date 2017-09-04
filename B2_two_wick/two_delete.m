function [ABt,BAt,AAt,BBt,AB,BA]=two(E,X,Y,t)

phi=(X+Y)'; psi=(X-Y)';  
evolve=expm(sqrt(-1)*E*t);

ABt=(phi.')*evolve*psi;
BAt=-(psi.')*evolve*phi;
AAt=(phi.')*evolve*phi;
BBt=-(psi.')*evolve*psi;

AB=(phi.')*psi;
BA=-(psi.')*phi;