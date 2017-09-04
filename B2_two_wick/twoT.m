function [ABt,BAt,AAt,BBt,AB,BA,vAt,vBt,Atv,Btv,vA,vB,Av,Bv]=twoT(E,X,Y,t)

phi=X+Y; psi=X-Y;  
et=expm(-sqrt(-1)*2*E*t);
etb=expm(sqrt(-1)*2*E*t);

AAt=phi*et*(phi.');
ABt=phi*et*(psi.');
BAt=-psi*et*(phi.');
BBt=-psi*et*(psi.');

AB=phi*(psi.');
BA=-psi*(phi.');

vAt=(phi*etb).';
vBt=(psi*etb).';
Atv=phi*et;
Btv=-psi*et;

vA=(phi).';
vB=(psi).';
Av=phi;
Bv=-psi;

return

