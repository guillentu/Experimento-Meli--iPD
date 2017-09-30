a=2;b=2;
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
R(:,:)=NaN;
T=zeros(length(pT),length(pR));
T(:,:)=NaN;
for i=2:length(pRR)
  %[x y]=find(pR<=pRR(i-1)  & pR>=pRR(i));
  [x y]=find(pR<=pRR(i)*1.1  & pR>=pRR(i)*0.99);
  I(i,y)= (2*pRR(i)+(a-b+2).*pT(y)-1) ./ ((a+b-2).*pT(y)+1);
  R(i,y)=pRR(i)+a*pT(y);
  T(i,y)=(1-pRR(i))+(b-2)*pT(y);
endfor
figure;[xx, yy] = meshgrid (1:-0.01:0, pT);surf(1:-0.01:0, pT,R');
xlabel ("prob(pCC)");colormap(jet);
ylabel ("prob(pCD)");
zlabel ("R");title ("Indice con a=2 b=2");
figure;[xx, yy] = meshgrid (1:-0.01:0, pT);surf(1:-0.01:0, pT,T');
xlabel ("prob(pCC)");colormap(jet);
ylabel ("prob(pCD)");
zlabel ("T");title ("Indice con a=2 b=2");
figure;[xx, yy] = meshgrid (1:-0.01:0, pT);surf(1:-0.01:0, pT,I');
colormap(jet);
xlabel ("prob(pCC)");
ylabel ("prob(pCD)");
zlabel ("I");title ("Indice con a=2 b=2");