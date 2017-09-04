function S=wickEqualTime(II,JJ,AB,BA)

a=2*II-1;
b=2*II+2*JJ-2;
S=zeros(b);


S(1:2:a,2:2:a)=AB(1:II,1:II-1);
S(2:2:a,1:2:a)=BA(1:II-1,1:II);

S(1:2:a,a+2:2:b)=AB(1:II,1:JJ-1);
S(2:2:a,a+1:2:b)=BA(1:II-1,1:JJ);
MIIJJ=max([II JJ]);
for i=1:2:2*MIIJJ-1
    S(i,a+i)=1;
end
for i=2:2:2*MIIJJ-1
    S(i,a+i)=-1;
end

S(a+1:2:b,a+2:2:b)=AB(1:JJ,1:JJ-1);
S(a+2:2:b,a+1:2:b)=BA(1:JJ-1,1:JJ);


for i=1:b
    for j=1:i-1
        S(i,j)=-S(j,i);
    end
end

end
