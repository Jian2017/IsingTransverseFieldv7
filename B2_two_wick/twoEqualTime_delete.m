function [AB,BA]=twoEqualTime(X,Y)

 
AB=(X+Y)*((X-Y)');
BA=(Y-X)*((X+Y)');
% 
% AB=AB';
% BA=BA';