% correlation in random transverse field system

if (isdeployed==0)
    addpath('./B1_getH_XYE/');
    addpath('./B2_two_wick/');
    addpath('./B4_correlator');
    addpath('./B3_pfaffian/');
    addpath('./B5_fft_plot');
end


load('input.mat');


CSnt=zeros(x.step,x.Dist);  % this matrix stores the space-time correlation function

for R=1:x.RR
    disp(R);
    disp(fix(clock));   

    H=getH3(x.L,x.BC,x.g(:,R),x.m1(:,R),x.m2(:,R));    % generating the fermion Hamiltonian 
    [E,X,Y]=generateXYE(H,x.eigen);  % diagolize the fermion Hamilontian
    Cnt=correlator3s(E,X,Y,x.II,x.Dist,x.t0,x.dt,x.step );  
    CSnt=CSnt+Cnt;

end

CSnt=CSnt/x.RR;

save('output.mat','CSnt' );

Swk=hanF(CSnt) ;

colorPlot;