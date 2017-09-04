function h=randfield3(L,hg,hw,R)

% 50% binary distribution, with geometric mean hg, width hw

p1=0.5;
h2=(sqrt( hw^2 +4*hg^2)+hw)/2;
h1=h2-hw;


h=randfield2(L,h1,p1,h2,R);
return
