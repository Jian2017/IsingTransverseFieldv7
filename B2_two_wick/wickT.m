function S=wickT(n,m,II,JJ,ABt,BAt,AAt,BBt,AB,BA,vAt,vBt,Atv,Btv,vA,vB,Av,Bv)


a=nnz(n);
b=2*II-1+a;
c=2*JJ-1+b;
d=c+nnz(m);


S=zeros(d);



%1
S(1:a,  a+1 : 2 : b )=vAt(find(n),1: II   );   % so many thing to be checked again
S(1:a,  a+2 : 2 : b )= vBt(  find(n),1: (II-1));

%2
S(1:a,  b+1 : 2 : c )= vA( find(n),1: JJ ) ;
S(1:a,  b+2 : 2 : c )= vB(  find(n) ,1: (JJ-1)) ;

%3
 temp=zeros(nnz(n),nnz(m));
 nf=find(n);
 mf=fliplr(find(m));
for i=1:nnz(n)
    for j=1:nnz(m)
        if nf(i)==mf(j)
            temp(i,j)=1;
        else    
        end   
    end
end
S(1:a , c+1 : d )=temp;


%4
S( a+1 : 2 : b  ,  c+1: d ) = Atv( 1:II , fliplr(find(m)) );
S( a+2 : 2 : b  ,  c+1: d ) = Btv( 1:II-1 , fliplr(find(m)) );

%5
S( b+1 : 2 : c , c+1:d ) = Av( 1:JJ , fliplr(find(m)) );
S( b+2 : 2 : c , c+1:d ) = Bv( 1:JJ-1, fliplr(find(m)) );

S=S-S.';

S( a+1 : c , a+1 : c )=wick(II,JJ,ABt,BAt,AAt,BBt,AB,BA);

return 