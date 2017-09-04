 addpath('./B0_randfield/');
 addpath('./B1_getH_XYE/');

clear;clc;
L=80;
BC=0;
g=ones( L,1)*1.0;
m1=g*0.0000000; %randfield2(L,0.9,0.5,1.1,1);
% m1(1:40)=0.0;
% m1(80:120)=2.0;
m2=g*2.0;

 H=getH3( L, BC , g , m1 , m2 );     
 [E,X,Y]=generateXYE(H,3); 
 V0=[X Y;Y X];
 test1=abs(V0'*V0-eye(2*L));
 figure;
 surf(test1);
 title('orthogonal quality');
 
 disp('orthogonal quality');
 disp(max(max(test1)));
 

  
 D=[E zeros(L); zeros(L) -E];
 test2=H*V0-(V0*D);
 disp('eigen quality');
 disp(max(max(test2)));
     figure;  surf(test2);
     title('eigen quality');
     xlabel('eigenvectors');
     
    E(1,1)
    E(2,2)

