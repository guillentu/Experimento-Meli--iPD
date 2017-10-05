clear all;
close all;
test="dos";
if strcmp(test,"uno")
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

else
  a=5;b=2;
  pRR=1:-0.01:0;
  pT=0:0.005:.5;
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%
  pP=0:0.01:1;
  pR=zeros(length(pT),length(pP));
  for i=1:length(pT)
    pR(:,i)=1-pP'-2*pT(i);
  endfor
  pR(find(pR<0))=NaN;
  figure;
  meshgrid(pP,pT);
  mesh(pP,pT,pR)
  xlabel ("pP");
  ylabel ("pT");
  %%%%%%%%%%%%%%%%%%%%%%%%%%%% xR(1:10,100)  find(xR(1:10,100)>=0)
  I=zeros(length(pT),length(pR));
  I(:,:)=NaN;
  R=zeros(length(pT),length(pR));
  T=zeros(length(pT),length(pR));
  for i=2:length(pRR)
    %[x y]=find(pR<=pRR(i-1)  & pR>=pRR(i));
    [x y]=find(pR<=pRR(i)*1.1  & pR>=pRR(i)*0.99);
    I(i,y)= (2*pRR(i)+(a-b+2).*pT(y)-1) ./ ((a+b-2).*pT(y)+1);
  %    R(:,i)=pR(i)+a*pT';
  %    T(:,i)=1-pR(i)+(b-2)*pT';
  endfor
  figure;
  [xx, yy] = meshgrid (1:-0.01:0, pT);
  %mesh (pT,1:-0.01:0, I,'filled');
  surf(1:-0.01:0, pT,I');
  colormap(jet);
  xlabel ("prob(pCC)");
  ylabel ("prob(pCD)");
  zlabel ("I");
  title ("Indice con a=5 b=2");

%  figure;
%  [xx, yy] = meshgrid (pT, pR);
%  mesh (pT, pR, R');
%  colormap(jet);
endif


%xT=0:0.005:.5;
%xP=0:0.01:1;
%xR=zeros(length(xT),length(xP));
%for i=1:length(xP)
%  xR(:,i)=1-xP(i)-2*xT';
%endfor
%meshgrid(xT,xP);
%xR(find(xR<0))=NaN;
%mesh(xT,xP,xR)
%xlabel ("xT");
%ylabel ("xP");
