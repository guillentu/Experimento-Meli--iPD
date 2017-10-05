a=3;b=2;
r=2;% Solo afecta el refuerzo por R para la imagen de refuerzos en funcion de frec CC y CD
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
  R(i,y)=r*pRR(i)+a*pT(y);%                                            ACA afecta
  T(i,y)=(1-pRR(i))+(b-2)*pT(y);
endfor
%figure;hold on;
%[xx, yy] = meshgrid (1:-0.01:0, pT);
%surf(1:-0.01:0, pT,R');
%xlabel ("prob(pCC)");colormap(jet);
%ylabel ("prob(pCD)");
%zlabel ("R");title ("Indice con a=2 b=2");
%%figure;[xx, yy] = meshgrid (1:-0.01:0, pT);
%surf(1:-0.01:0, pT,-T');
%xlabel ("prob(pCC)");colormap(jet);
%ylabel ("prob(pCD)");
%zlabel ("T");title ("Indice con a=2 b=2");
%%figure;[xx, yy] = meshgrid (1:-0.01:0, pT);
%surf(1:-0.01:0, pT,I');
%colormap(jet);
%xlabel ("prob(pCC)");
%ylabel ("prob(pCD)");
%zlabel ("I");title ("Indice con a=2 b=2");

load("frecuencias_RTPS_T5R2")
T_mean5=T_mean;
R_mean5=R_mean;
P_mean5=P_mean;
S_mean5=S_mean;
load("frecuencias_RTPS_T3R2")
T_mean3=T_mean;
R_mean3=R_mean;
P_mean3=P_mean;
S_mean3=S_mean;
load("../Experimento---iPD/ExtraerDatos/frecuencias_RTPS_T2R2")

figure;hold on;
[xx, yy] = meshgrid (1:-0.01:0, pT);
%surf(1:-0.01:0, pT,(R-T)');
%%%%%surf(1:-0.01:0, pT,((R)./(T-.5))');
%surf(1:-0.01:0, pT,(R./(T+.5).^2)');
%surf((R(20:end,20:end)./T(20:end,20:end))');
xlabel ("prob(pCC)");colormap(jet);
ylabel ("prob(pCD)");
title(strcat("a=",num2str(a)));
%surf(1:-0.01:0, pT,-T');
%surf(1:-0.01:0, pT,I');
imagesc(1:-0.01:0, pT,(R'))
caxis([0 2.5])
colorbar;
if a==5
  plot((R_mean5([1 3 4])),(T_mean5([1 3 4])),'ok','MarkerSize',10,'linewidth',3)
  plot(mean(R_mean5([1 3 4])),mean(T_mean5([1 3 4])),'og','MarkerSize',10,'linewidth',3)
%  errorbar(mean(R_mean5([1 3 4])),mean(T_mean5([1 3 4])),sem(R_mean5([1 3 4])),-sem(R_mean5([1 3 4])),...
%                                                         sem(T_mean5([1 3 4])),-sem(T_mean5([1 3 4])),'.k');
  h=errorbar(mean(R_mean5([1 3 4])),mean(T_mean5([1 3 4])),sem(R_mean5([1 3 4])),sem(T_mean5([1 3 4])),'~>g');
  set(h,'linewidth',3);
  %plot((R_mean3([2 5 6])),(T_mean3([2 5 6])),'or','MarkerSize',10,'linewidth',3)             ,'~>r'
elseif a==3
  plot((R_mean3([1 2 3 4 5 6])),(T_mean3([1 2 3 4 5 6])),'ok','MarkerSize',10,'linewidth',3)
  plot(mean(R_mean3([1  3 4])),mean(T_mean3([1  3 4])),'om','MarkerSize',10,'linewidth',3)
  h=errorbar(mean(R_mean3([1 2 3 4 5 6])),mean(T_mean3([1 2 3 4 5 6])),sem(R_mean3([1 2 3 4 5 6])),sem(T_mean3([1 2 3 4 5 6])),'~>m');
  set(h,'linewidth',3);
else
  %load("../Experimento---iPD/ExtraerDatos/frecuencias_RTPS_T2R2")
  plot((R_mean([1 3 7 8 9 10 11 12])),(T_mean([1 3 7 8 9 10 11 12])),'ok','MarkerSize',10,'linewidth',3)
  plot(mean(R_mean([1 3 7 8 9 10 11 12])),mean(T_mean([1 3 7 8 9 10 11 12])),'ob','MarkerSize',10,'linewidth',3)
  h=errorbar(mean(R_mean([1 3 7 8 9 10 11 12])),mean(T_mean([1 3 7 8 9 10 11 12])),sem(R_mean([1 3 7 8 9 10 11 12])),sem(T_mean([1 3 7 8 9 10 11 12])),'~>b');
  set(h,'linewidth',3);
endif




%figure;hold on;
%%plot(R_mean5([2 5 6 ]),P_mean5([2 5 6]),'og','MarkerSize',10,'linewidth',3)
%plot(R_mean5([1 3 4 ]),T_mean5([1 3 4]),'ok','MarkerSize',10,'linewidth',3)
%plot((R_mean3([2 5 6])),(T_mean3([2 5 6])),'or','MarkerSize',10,'linewidth',3)
%plot((R_mean([1 3 7 8 9 10 11 12])),(T_mean([1 3 7 8 9 10 11 12])),'om','MarkerSize',10,'linewidth',3)
%auxR=mean([R_mean5([1 3 4 ]),R_mean3([2 5 6])]);
%auxT=mean([T_mean5([1 3 4 ]),T_mean3([2 5 6])]);
%plot(auxR,auxT,'*k','MarkerSize',20,'linewidth',3)
%plot(mean(R_mean([1 3 7 8 9 10 11 12])),mean(T_mean([1 3 7 8 9 10 11 12])),'*m','MarkerSize',20,'linewidth',3)
%ylabel("CD");
%xlabel("CC");

%figure;
%bar([mean(P_mean5([2 5 6])) mean(P_mean([1 3 7 8 9 10 11 12])) mean(P_mean3([1 3 4])) mean([P_mean5([1 3 4]),P_mean3([2 5 6])])] )