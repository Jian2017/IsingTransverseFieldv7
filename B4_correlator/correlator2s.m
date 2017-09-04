function haha=correlator2s(E,X,Y,t,II,Dist ) 


L=size(E,1);

haha=zeros(1,Dist);

 [ABt,BAt,AAt,BBt,AB,BA,vAt,vBt,Atv,Btv,vA,vB,Av,Bv]=twoT(E,X,Y,t);
 
 n=zeros(L,1);
 n(L)=0;
 
 
%  for xx=L:-1:fix(L/2)
%  n(xx)=1;
%  end

 m=n;
 
 
for i=1:Dist
    S=wickT(n,m,II,II+i-1,ABt,BAt,AAt,BBt,AB,BA,vAt,vBt,Atv,Btv,vA,vB,Av,Bv);
    haha(i)=pfaffianXun(S);
end