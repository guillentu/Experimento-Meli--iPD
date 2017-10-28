% primeros15=[42.867
%    42.800
%    43.333
%    42.667
%    42.800
%    42.667
%    43.133
%    43.133
%    43.667
%    43.067
%    42.733
%    43.000
%    42.667
%    42.533
%    42.800]
% 
% segundos15=[42.933
%    42.733
%    43.133
%    42.600
%    42.933
%    41.867
%    42.867
%    42.467
%    42.933
%    42.733
%    43.067
%    43.067
%    43.933
%    42.533
%    41.933]
% 
% ranksum(primeros15,segundos15)
% ttest(primeros15,segundos15)  % OK da significativo

clear all;
load datos_exp_R1T3.mat
sujetos=[1 3 4];fin=18;
sujetos=[2 5 6];fin=27;
T=T2(sujetos,fin-4:fin);
R=R2(sujetos,fin-4:fin);
P=P2(sujetos,fin-4:fin);
S=S2(sujetos,fin-4:fin);

mat=([T(:) R(:) P(:) S(:)])
[p,table,stats]=friedman(mat)
H=multcompare(stats)
aux=H(:,3).*H(:,5)
diff = [H(:,1:2)  aux>0]

clear all;
load datos_exp_R1T5_y_R2T3.mat
sujetos=[1 3 4];fin=17;
sujetos=[2 5 6];fin=14;
T=T2(sujetos,fin-4:fin);
R=R2(sujetos,fin-4:fin);
P=P2(sujetos,fin-4:fin);
S=S2(sujetos,fin-4:fin);

mat=([T(:) R(:) P(:) S(:)])
[p,table,stats]=friedman(mat)
H=multcompare(stats)
aux=H(:,3).*H(:,5)
diff = [H(:,1:2)  aux>0]


clear all;
load datos_exp_R1T2.mat
sujetos=[1 3 7 8 9 10 11 12];
%fin=[21 33 23 23 23 31 23 50 31 29 33 23];
sujetos=[2 4 5 6];
T=[];R=[];P=[];S=[];
for i=1:length(sujetos)
    T=[T 30*T2(sujetos(i),fin(sujetos(i))-4:fin(sujetos(i)))];
    R=[R 30*R2(sujetos(i),fin(sujetos(i))-4:fin(sujetos(i)))];
    P=[P 30*P2(sujetos(i),fin(sujetos(i))-4:fin(sujetos(i)))];
    S=[S 30*S2(sujetos(i),fin(sujetos(i))-4:fin(sujetos(i)))];
end
mat=([T(:) R(:) P(:) S(:)])
[p,table,stats]=friedman(mat)
H=multcompare(stats)
aux=H(:,3).*H(:,5)
diff = [H(:,1:2)  aux>0]

