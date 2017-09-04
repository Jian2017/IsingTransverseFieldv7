function haha=correlator3s(E,X,Y,II,Dist,t0,dt,step ) 

haha=zeros(step,Dist);

for i=1:step
    haha(i,:)=correlator2s(E,X,Y,t0+dt*(i-1),II,Dist ) ;
 
end

return