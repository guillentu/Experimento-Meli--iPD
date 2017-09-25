a=1
_vRefuerzos=[1 5 0 0];
_vDelay4eat=[5 5 13 9];%[cc dc cd dd] [R T S P]
%_timeoutLimit=10*0+10*8+10*4;%10*5+10*13+10*9;% 270s en 30trials  %195; %13*15 or T+29*P=
_timeoutITI=30*5;
_foodLimit=_vRefuerzos(2)*15+0*15;% food por T y por S, alterna
%N=30;
%% alimento de sujetos ideales   markov       prob estaren C o D
%probC2=zeros(1,7); % [alternador; cooperador; CyD de a pares; la mitad coop] 
%probC2=[.5;1;0.5;.5;.5;2/3;3/4];
%probD2=zeros(1,7);
%probD2=1-probC2;
%%         {"switch CD"; "all C";      "switch CCDD";  "half C";            "switch 3Cx3D";   "switch CCD";  "switch CCCD"}          R     S     T  P
%QQideales=[[0; 1 ;1; 0],[1; 0; 0; 0],[.5; .5; .5; .5],[14/15; 0; 1/15; 1],[2/3;1/3;1/3;2/3],[.5; 1; .5; 0],[2/3; 1; 1/3; 0]];
%_idealSujeto=zeros(2,length(probC2));% row 1 alimetno - row 2 delay to eat
%for i=1:length(probC2)
%%  _idealSujeto(1,i)= N *_vRefuerzos([1 4 2 3])*(vec((reshape(QQideales(:,i),2,2))^100).*[probC2(i);probD2(i);probC2(i);probD2(i)]);
%%  _idealSujeto(2,i)= 30*_vDelay4eat([1 4 2 3])*(vec((reshape(QQideales(:,i),2,2))^100).*[probC2(i);probD2(i);probC2(i);probD2(i)]);
%  %                                 % R  S .T P      % [R S T P]
%  _idealSujeto(1,i)=1*_vRefuerzos([1 4 2 3])*(QQideales(:,i).*[probC2(i);probD2(i);probC2(i);probD2(i)]);
%endfor
%for i=1:length(probC2)
%  _idealSujeto(2,i)=1*_vDelay4eat([1 4 2 3])*(QQideales(:,i).*[probC2(i);probD2(i);probC2(i);probD2(i)]);
%endfor


%probC2([1 2 4 6 7])'
%_idealSujeto(:,[1 2 4 6 7])

%i=1
%_vRefuerzos([1 4 2 3])*(vec((reshape(QQideales(:,i),2,2))^100).*[probC2(i);probD2(i);probC2(i);probD2(i)])
%(reshape(QQideales(:,i),2,2))^100
%vec(ans)
%ans.*[probC2(i);probD2(i);probC2(i);probD2(i)]
%_vRefuerzos([1 4 2 3])*ans
%for ag=[1 6]
%  n=1000;
%  agente1=zeros(1,n);
%  agente1_reward=zeros(1,n);
%  agente1(find(rand(1,n)<=probC2(ag)))=1;
% %length(find(agente1==1))
%  if agente1(1)==1
%    agente1_reward(1)=_vRefuerzos(1);
%  else
%    agente1_reward(1)=_vRefuerzos(2);
%  endif
%  for k=2:n
%    if agente1(k)==1 && agente1(k-1)==1
%      agente1_reward(k)=_vRefuerzos(1);
%    elseif agente1(k)==0 && agente1(k-1)==1
%      agente1_reward(k)=_vRefuerzos(2);
%    elseif agente1(k)==1 && agente1(k-1)==0
%      agente1_reward(k)=_vRefuerzos(3);
%    elseif agente1(k)==0 && agente1(k-1)==0
%      agente1_reward(k)=_vRefuerzos(4);
%    endif
%  endfor
%    sum(agente1_reward)/n/_vRefuerzos(1)
%endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%_timeoutLimit=15*5+15*13;
%_timeoutITI=30*5;
%_foodLimit=2*15+0*15;% 
%_delay2eat=(_timeOutMedia-_timeoutITI)./(_timeoutLimit-_timeoutITI);
%[Ss I]=sort(foodMedia);
%hhh=figure;
%aux=I(find(sort(foodMedia)));
%h=scatter(_delay2eat(aux),foodMedia(aux),200, _mediaXsujeto(aux),"filled");
%%ch=colormap(gray);
%h=colormap(jet);
%h=colorbar('eastoutside');
%aux=I(find(sort(foodMedia)));
%%t=text(-0.01*[1 1 1 1 1 1 1 -1 1 1 1 1]+_delay2eat(aux),.01*[ -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 1]+foodMedia(aux),_txtSujetos(aux,:));
%set(t, "fontsize", 16);
%hold on;
%%h=errorbar(_delay2eat(I(find(sort(foodMedia)>0.8)))./_timeOutMedia,foodMedia(I(find(sort(foodMedia)>0.8))),,'*k');
%%set(hhh, "linewidth", 2);
%hh=ylabel("% of total Reward");
%set(hh, "fontsize", 16);
%hh=xlabel("% total acumulated Timeout per sessions");
%set(hh, "fontsize", 16);
%%hh=title("Reward versus Timeout to eat (colorbar=cooperation)"); 
%set(hh, "fontsize", 16);
%
%%t=text(0.02*[-1 -1 0 -1 -1 0 -1 -1]+_delay2eat(aux),-0.04*[1 1 1 1 1.2 -.8 1 -1]+foodMedia(aux),_txtSujetos(aux,:));
%%axis('auto');
%axis([0, 1, .55, 1]);
%hold on;
%h=scatter((_idealSujeto(2,[1 3 4 5 6 7])-_timeoutITI)./(_timeoutLimit-_timeoutITI),_idealSujeto(1,[1 3 4 5 6 7]),35,probC([1 3 4 5 6 7])','square',"filled");
%h=scatter((_idealSujeto(2,[1 3 4 5 6 7])-_timeoutITI)./(_timeoutLimit-_timeoutITI),_idealSujeto(1,[1 3 4 5 6 7]),35,'k','s',"linewidth",2);
%t=text(-0.10*[1 1 1 1 0.2 1.5]+(_idealSujeto(2,[1 3 4 5 6 7])-_timeoutITI)./(_timeoutLimit-_timeoutITI),
%       0.05*ones(1,length(probC([1 3 4 5 6 7])))+ _idealSujeto(1,[1 3 4 5 6 7]), 
%       {"switch CD";"switch CCDD";"half C";"switch 3Cx3D";"switch CCD";"switch CCCD"});
%
%t=text(-0.10*[1 1 1 1 0.2 1.5]+ (_idealSujeto(2,[1 3 4 5 6 7])-_timeoutITI)./(_timeoutLimit-_timeoutITI),
%       0.03*[1 1 1 1 1 1]+ _idealSujeto(1,[1 3 4 5 6 7]),
%       {"coop 0.5";"coop 0.5";"coop 0.5";"coop 0.5";"coop 0.66%";"coop 0.75%"}); 
%t=text(0.1,0.3,{"Normalized amoung of C choice"},"fontsize",16);       
%hold off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n=10000;
trials=30;
agente1=zeros(n,trials);
coop=[0.8];
color=['r';'b';'r';'b';'r';'b';'r';'b'];
_vAgente1_reward=[];
_vAgente1_timeout=[];
for trials=[30]
  _timeoutLimit=trials/2*_vDelay4eat(2)+trials/2*_vDelay4eat(3);
  _timeoutITI=trials*5;
  _foodLimit=_vRefuerzos(2)/(trials/2);% 
  iter=1;
  %coop(iter)
  Sss=[ones(ceil(trials*coop),1);zeros(floor(trials*(1-coop)),1)]+1;
  for i=1:n
    %[q w]=find((randperm(trials)/trials)<=coop(iter));
    agente1(i,randperm(length(Sss)))=Sss;
    %agente1(i,w)=2;
  endfor
  %agente1=unique(agente1,'rows');
  [r c]=size(agente1);
  _outcomes_T5=zeros(4,r);
  agente1_reward=zeros(1,r);
  agente1_timeout=zeros(1,r);
  agente1_timeout_n=zeros(1,r);
  for i=1:r
    _outcomes_T5(1,i)=length(find(diff(agente1(i,(1:30)))==-1));% CD=T
    _outcomes_T5(2,i)=length(find(diff(agente1(i,(1:30)))==1)); % DC=S 
    _outcomes_T5(3,i)=length(find(agente1(i,(1:29))+agente1(i,(2:30))==4));%CC=R
    _outcomes_T5(4,i)=length(find(agente1(i,(1:29))+agente1(i,(2:30))==2));%DD=P
    agente1_reward(1,i)=_vRefuerzos(1)*_outcomes_T5(3,i)+_vRefuerzos(2)*_outcomes_T5(1,i);
%    agente1_timeout(i)=_vDelay4eat(3)*_outcomes_T5(2,i)+_vDelay4eat(4)*_outcomes_T5(4,i);
    agente1_timeout(1,i)=_vDelay4eat(3)*_outcomes_T5(2,i)+...
                       _vDelay4eat(4)*_outcomes_T5(4,i)+...
                       _vDelay4eat(2)*_outcomes_T5(1,i)+...
                       _vDelay4eat(1)*_outcomes_T5(3,i);
%    if agente1(i,1)==2
%      agente1_reward(1)=_vRefuerzos(1);
%    else
%      agente1_reward(1)=_vRefuerzos(2);
%    endif
%    for k=2:trials
%      if agente1(i,k)==2 && agente1(i,k-1)==2
%        agente1_reward(i)+=_vRefuerzos(1);% R
%        agente1_timeout(i)+=_vDelay4eat(1);%R
%      elseif agente1(i,k)==1 && agente1(i,k-1)==2
%        agente1_reward(i)+=_vRefuerzos(2); %T
%        agente1_timeout(i)+=_vDelay4eat(2);%T
%      elseif agente1(i,k)==2 && agente1(i,k-1)==1
%        agente1_reward(i)+=_vRefuerzos(3); %S
%        agente1_timeout(i)+=_vDelay4eat(3);%S
%      elseif agente1(i,k)==1 && agente1(i,k-1)==1
%        agente1_reward(i)+=_vRefuerzos(4); %P
%        agente1_timeout(i)+=_vDelay4eat(4);%P
%      endif
%    endfor
  endfor
  %sum(agente1_reward)/n/_vRefuerzos(1)
  _timeoutLimit=(trials/2)*0+(trials/2)*8;%10*5+10*13+10*9;% 270s en 30trials  %195; %13*15 or T+29*P=
               %10*P  o 9*P+1*8
  _timeoutITI=trials*5;
  _foodLimit=_vRefuerzos(2)*(trials/2)+_vRefuerzos(3)*(trials/2);% food por T y por S, alterna
  %_foodLimit=_vRefuerzos(1)*(trials-1)+_vRefuerzos(2)*1;

  _vAgente1_reward=[ _vAgente1_reward; agente1_reward/_foodLimit];
  _vAgente1_timeout=[ _vAgente1_timeout; (agente1_timeout-_timeoutITI)/_timeoutLimit];
%  agente2_reward=uniagente1_reward/_foodLimit
  %figure();
%  hold on;
%  scatter(unique([]),(12-iter)*15,color(iter,:))
%  hold off;
  %print(hhh, "figura_iPD_1_2_9s_13s/reward_timeout_todos_simulados.png");
endfor

figure();
hold on;
%  vec=unique([_vAgente1_timeout(1,:)' _vAgente1_reward(1,:)'],'rows');
%  vec=unique([_vAgente1_timeout(1,:)' _vAgente1_reward(1,:)'],'rows');
%vec=unique(_vAgente1_reward(1,:)','rows');
%scatter(_vAgente1_timeout(1,:),_vAgente1_reward(1,:),(12-iter)*15,color(iter,:))
%scatter(rw_T5(fin_T5-4:fin_T5,[1 3 4]),to_T5(fin_T5-4:fin_T5,[1 3 4]),150,'b');
%scatter(mean(rw_T5(fin_T5-4:fin_T5,[1 3 4]),1),mean(to_T5(fin_T5-4:fin_T5,[1 3 4]),1),150,'k','filled');
%scatter(mean(mean(rw_T5(fin_T5-4:fin_T5,[1 3 4]),1)),mean(mean(to_T5(fin_T5-4:fin_T5,[1 3 4]),1)),200,'c','filled');
%scatter(mean(mean(rw_T5(fin_T5-4:fin_T5,[1 3 4]),1)),mean(mean(to_T5(fin_T5-4:fin_T5,[1 3 4]),1)),220,'k');

plot(_vAgente1_timeout(1,:),_vAgente1_reward(1,:),'*r')
plot(rw_T5(fin_T5-4:fin_T5,[1 3 4]),to_T5(fin_T5-4:fin_T5,[1 3 4]),'*b');
plot(mean(rw_T5(fin_T5-4:fin_T5,[1 3 4]),1),mean(to_T5(fin_T5-4:fin_T5,[1 3 4]),1),'ok');
plot(mean(mean(rw_T5(fin_T5-4:fin_T5,[1 3 4]),1)),mean(mean(to_T5(fin_T5-4:fin_T5,[1 3 4]),1)),'+k','MarkerSize',20,'linewidth',3);
plot(mean(mean(rw_T5(fin_T5-4:fin_T5,[1 3 4]),1)),mean(mean(to_T5(fin_T5-4:fin_T5,[1 3 4]),1)),'ok');
%vec=unique([_vAgente1_timeout(2,:)' _vAgente1_reward(2,:)'],'rows');
%scatter(vec(:,1),(12-iter)*15,color(iter,:))
hold off;axis([0, 1, .55, 1]);

figure;
hold on;  
figure;hist(_outcomes_T5(1,:)/29);legend("CD=T");
hold on;nn=sum(exp_T3,1); 
scatter((mean(exp_T5./nn,2))(1),0,150,'r','linewidth',3);
scatter((exp_T5./nn)(1,:),[0 0 0],150,'g','linewidth',3);
figure;hist(_outcomes_T5(2,:)/29);legend("DC=S");
hold on;nn=sum(exp_T3,1); 
scatter((mean(exp_T5./nn,2))(2),0,150,'r','linewidth',3);
scatter((exp_T5./nn)(2,:),[0 0 0],150,'g','linewidth',3);
figure;hist(_outcomes_T5(3,:)/29);legend("CC=R");
hold on;nn=sum(exp_T3,1); 
scatter((mean(exp_T5./nn,2))(3),0,150,'r','linewidth',3)
scatter((exp_T5./nn)(3,:),[0 0 0],150,'g','linewidth',3)
figure;hist(_outcomes_T5(4,:)/29);legend("DD=P");
hold on;nn=sum(exp_T3,1); 
scatter((mean(exp_T5./nn,2))(4),[0 0 0],150,'r','linewidth',3);
scatter((exp_T5./nn)(4,:),[0 0 0],150,'g','linewidth',3);
%hist(_vAgente1_reward)

% Indice R-T / R+T
figure;I_T5_simu=(_vAgente1_reward-_vAgente1_timeout)./(_vAgente1_reward+_vAgente1_timeout);
hist(I_T5_simu);
load('datos_indice_T5');
rw_T5=food; 
to_T5=_timeOut;
fin_T5=[17 27 17 17 27 27];foodMax_T5=60;
I_T5= (mean(rw_T5(fin_T5-4:fin_T5,[1 3 4]))-mean(to_T5(fin_T5-4:fin_T5,[1 3 4])))./(mean(rw_T5(fin_T5-4:fin_T5,[1 3 4]))+mean(to_T5(fin_T5-4:fin_T5,[1 3 4])));
hold on;
scatter(mean(I_T5),0,150,'r','linewidth',3)
scatter(I_T5,[0 0 0],150,'g','linewidth',3)
errorbar(mean(I_T5),0,sem(I_T5),'oy');
