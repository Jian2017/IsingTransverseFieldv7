function S=wick(II,JJ,ABt,BAt,AAt,BBt,AB,BA)


a=2*II-1;
b=2*II+2*JJ-2;
S=zeros(b);


S(1:2:a,2:2:a)=AB(1:II,1:II-1);
S(2:2:a,1:2:a)=BA(1:II-1,1:II);

S(1:2:a,a+2:2:b)=ABt(1:II,1:JJ-1);
S(2:2:a,a+1:2:b)=BAt(1:II-1,1:JJ);
S(1:2:a,a+1:2:b)=AAt(1:II,1:JJ);
S(2:2:a,a+2:2:b)=BBt(1:II-1,1:JJ-1);

S(a+1:2:b,a+2:2:b)=AB(1:JJ,1:JJ-1);
S(a+2:2:b,a+1:2:b)=BA(1:JJ-1,1:JJ);


for i=1:b
    for j=1:i-1
        S(i,j)=-S(j,i);
    end
end




















% S=zeros(2*II+2*JJ-2);





% for i=1:(2*II-1)
%     for j=(i+1):(2*II-1)
%         if(mod(i,2)==1 && mod(j,2)==0)
%             S(i,j)=AB( fix((i+1)/2), fix(j/2)  );    %12;
%         elseif(mod(i,2)==0 && mod(j,2)==1)
%                 S(i,j)=BA( fix(i/2), fix((j+1)/2)  );  %21;
%         end
%       
%   
%     end
% end
% 
% for i=1:(2*II-1)
%     for j=(2*II):(2*II+2*JJ-2)
%         if(mod(i,2)==1 && mod(j-2*II+1 ,2)==1)
%             S(i,j)=AAt( fix( (i+1)/2  ) ,     fix( (j-2*II+1+1)/2   )  );    %101;
%         elseif(mod(i,2)==1 && mod(j-2*II+1 ,2)==0)
%                 S(i,j)=ABt( fix( (i+1)/2  ) ,     fix( (j-2*II+1)/2   )  );  %102;
%         elseif(mod(i,2)==0 && mod(j-2*II+1 ,2)==1)
%                 S(i,j)=BAt( fix( i/2  ) ,     fix( (j-2*II+1+1)/2   )  );  %201;
%         elseif(mod(i,2)==0 && mod(j-2*II+1 ,2)==0)
%                 S(i,j)=BBt( fix( i/2  ) ,     fix( (j-2*II+1)/2   )  ); %202;
%         end
%         
%     end
% end
% 
% for i=(2*II):(2*II+2*JJ-2)
%     for j=(i+1):(2*II+2*JJ-2)
%         if(mod(i-2*II+1,2)==1 && mod(j-2*II+1,2)==0)
%             S(i,j)=AB( fix( (i-2*II+1+1)/2  ) ,     fix( (j-2*II+1)/2   )  );  % 12;
%         elseif(mod(i-2*II+1,2)==0 && mod(j-2*II+1,2)==1)
%                 S(i,j)=BA( fix( (i-2*II+1)/2  ) ,     fix( (j-2*II+1+1)/2   )  ); %21;
%         end
%         
%     end
% end


% for i=1:(2*II+2*JJ-2)
%     for j=(i+1):(2*II+2*JJ-2)
%         S(j,i)=-S(i,j);
%     end
% end
