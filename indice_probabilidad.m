
% Probabilidaddes para que I=0; 
r=1;
a=1:.1:5;
b=1:.1:2;
matrix=zeros(length(a),length(b));

close all;
for k=[0.0:0.05:0.65]
  matrix=zeros(length(a),length(b));
  for i=1:length(a)
    for j=1:length(b)
      pT=k;%1./a(i)*r;
      pR=(b(j)-a(i)-2)/2 * pT + .5;
      pP=0.5-pR;
      if pR>=0 
        matrix(i,j)=pR;
      endif
    endfor
    
  endfor
  figure;
  imagesc(matrix')
  ch=colormap(jet);
  h=colorbar('eastoutside');
  caxis([0 0.5])
  xlabel('a');
  ylabel('b');
  title(strcat('Color=Prob(CC)  pT=',num2str(pT)));
endfor


%r=1;
%a=1:0.05:2;
%b=1:0.05:2;
%matrix=zeros(length(a),length(b));
%
%for i=1:length(a)
%  for j=1:length(b)
%    pT=0.5;%1./a(i)*r;
%    pR=(b(j)-a(i)-2)./2 .* pT + .5;
%    if pR>=0 
%      matrix(i,j)=pR;
%    endif
%  endfor
%endfor
%
%plot(matrix*255)