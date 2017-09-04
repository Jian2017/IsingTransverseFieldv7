function h=randfield4(L,ha,hw,R)

% 50% binary distribution, with mean value ha, width hw

p1=0.5;
h2=(2*ha+hw)/2;
h1=h2-hw;


h=randfield2(L,h1,p1,h2,R);
return
