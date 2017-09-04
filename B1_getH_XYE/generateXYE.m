function [E,X,Y]=generateXYE(H,typeFlag)



 	L=size(H,1)/2;

     A=H(1:L,1:L);
     B=H(1:L,(L+1):2*L);
     [phi,E,psi]=svd(A+B);
     X=(psi+phi)/2;
     Y=(psi-phi)/2;
     
     


 
 return
