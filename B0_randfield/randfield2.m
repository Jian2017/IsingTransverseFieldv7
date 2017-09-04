function h=randfield2(L,h1,p1,h2,R)

% randfield2 is binary distribution, with h1 probablity p1, h2 probablity
% 1-p1
% R is the trial number R=1,2,3,...

rng(R);
h=rand(1,L);
for i=1:L
    if h(i)<p1
        h(i)=h1;
    else
        h(i)=h2;
    end
end


return