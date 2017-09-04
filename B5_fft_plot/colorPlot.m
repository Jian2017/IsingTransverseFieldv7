% Swk=SwkS;


% mymap=zeros(201,3);
% for i=1:size(mymap,1)
%     mymap(size(mymap,1)+1-i,:)=(i-1)/(size(mymap,1)-1);
% end
% 
% colormap(mymap);

h=figure('visible','off');
imagesc(abs(CSnt));
colorbar;
print(h,'-dpng','abs(CSnt)');
close(h);


Swk=hanF(CSnt);








t1=size(Swk,1);
t4=round(t1/4);
t2=round(t1/2);

w1=abs(Swk);
w0=w1;
w0(1: t1-t4 ,:)=w1(t4+1:t1,:);
w0(t1-t4+1: t1,:)=w1(1:t4,:);

h1=figure('visible','off');
imagesc(w0);


colormap pink;  %try pink, hot, parula, jet
colorbar;

xlabel('ka')
xticks=[1 size(Swk,2)/2 size(Swk,2)];
set(gca, 'XTick', xticks, 'xticklabel', {'0' '\pi' '2 \pi '});

ylabel('\omega/J')
yticks=[1 t4 t1-t4 t1];
set(gca, 'YTick', yticks, 'YTickLabel', {'1.5 \pi' '\pi' '0' '-0.5 \pi '});


title('S(\omega,k)');




 
hold on
plot([1 size(Swk,2)], [t1-t4 t1-t4 ],'w--');




print(h1,'-dpng','abs(Swk)');
close(h1);
% 
% xticks = linspace(1, size(data, 2), numel(xticklabels));
% set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)