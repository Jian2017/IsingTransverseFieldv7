function H=getH3(L,BC,g,m1,m2)


% BC=1
% periodic boundary condition for p-wave fermion (odd fermions)
% BC=-1
% anti-periodic boundary condition for p-wave fermiion (even fermions)
% BC=0
% open boundary condition

M=zeros(L);
for i=1:L-2
    M(i,i)=g(i);
    M(i,i+1)=-m1(i);
    M(i,i+2)=-m2(i);
end
M(L-1,L-1)=g(L-1);
M(L,L)=g(L);
M(L-1,L)=-m1(L-1);

switch BC
    case 0
    case 1
        M(L,1)=-m1(L);
        M(L-1,1)=-m2(L-1);
        M(L,2)=-m2(L);
    case -1
        M(L,1)=m1(L);
        M(L-1,1)=m2(L-1);
        M(L,2)=m2(L);
    otherwise
end

A=(M+M.')/2;
B=(M-M.')/2;
        
H=[A B; -B -A];

end






% A=zeros(L);
% B=zeros(L);
% for i=1:L;
%     for j=1:L
%         if (i==j)
%            A(i,j)= g(i);
%                  
%            
%         elseif (i+1==j )
%             A(i,j)=-m1(i)/2;
%             B(i,j)=-m1(i)/2;
% %         elseif ( i+1-L==j || i+1+L==j )
% %             A(i,j)=-J(L)*BC/2;
% %             B(i,j)=J(L)*BC/2;
%             
%             
%         elseif (i==j+1 )
%             A(i,j)=-m1(j)/2;
%             B(i,j)=m1(j)/2;
% %         elseif (  i-L==j+1 || i+L==j+1)
% %              A(i,j)=-J(L)*BC/2;
% %             B(i,j)=-J(L)*BC/2;
% 
%         elseif (i+2==j)
%             A(i,j)=-m2(i)/2;
%             B(i,j)=-m2(i)/2;
%             
%             
%         elseif (i==j+2)
%             A(i,j)=-m2(j)/2;
%             B(i,j)=m2(j)/2;
% 
% 
% 
%             
%         end
%         
%     end
% end