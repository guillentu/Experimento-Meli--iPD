
load 'figuras/figuras para Segio/datos_reward_timeout_coopMutua_tentacion.mat'

figure;
scatter(food(8:17,1),timeout(9:18,1),20,'b');
hold on;
scatter(food(8:17,2),timeout(9:18,2),20,'r');
hold off;
figure;
meanfood=mean([food(8:17,1)' food(8:17,2)']);
meanTimeout=mean([timeout(9:18,1)' timeout(9:18,2)']);
%meanfood2=mean(food(8:17,2));
%meanTimeout2=mean(timeout(9:18,2));
scatter(food(8:17,1)-meanfood,timeout(9:18,1)-meanTimeout,20,'b');
hold on;
scatter(food(8:17,2)-meanfood,timeout(9:18,2)-meanTimeout,20,'r');
hold off;

% proyectas x sobre w
x1=food(8:17,1)-meanfood;
x2=food(8:17,2)-meanfood;
y1=timeout(9:18,1)-meanTimeout;
y2=timeout(9:18,2)-meanTimeout;
w= [mean([x1,y1])-mean([x2,y2])] * inv(.5*cov(x1,y1)+.5*cov(x2,y2));
wn=w/(sqrt(w(1)^2+w(2)^2))

hold on;
plot([-1:0.1:1]*wn(1),[-1:0.1:1]*wn(2))
hold off;

%XY1=mean([x1,y1]);
%XY2=mean([x2,y2]);
T3proyect=wn*([x1,y1]');
T4proyect=wn*([x2,y2]');
hold on;
scatter(T3proyect*wn(1),T3proyect*wn(2),30,'b');
scatter(T4proyect*wn(1),T4proyect*wn(2),30,'r');
hold off
% DA significativo!!!!
ranksum(T3proyect,T4proyect)


%%%%%%%%%%%%%%% rankSum sobre T y R %%%%%%%%%%%%%%%%%%%%%%%%
var1=coopMutua;
var2=T;
figure;
scatter(var1(8:17,1),var2(9:18,1),20,'b');
hold on;
scatter(var1(8:17,2),var2(9:18,2),20,'r');
hold off;
figure;
meanvar1=mean([var1(8:17,1)' var1(8:17,2)']);
meanvar2=mean([var2(9:18,1)' var2(9:18,2)']);
%meanvar12=mean(var1(8:17,2));
%meanvar22=mean(var2(9:18,2));
scatter(var1(8:17,1)-meanvar1,var2(9:18,1)-meanvar2,20,'b');
hold on;
scatter(var1(8:17,2)-meanvar1,var2(9:18,2)-meanvar2,20,'r');
hold off;

% proyectas x sobre w
x1=var1(8:17,1)-meanvar1;
x2=var1(8:17,2)-meanvar1;
y1=var2(9:18,1)-meanvar2;
y2=var2(9:18,2)-meanvar2;
w= [mean([x1,y1])-mean([x2,y2])] * inv(.5*cov(x1,y1)+.5*cov(x2,y2));
wn=w/(sqrt(w(1)^2+w(2)^2))

hold on;
plot([-1:0.1:1]*wn(1),[-1:0.1:1]*wn(2))
hold off;

%XY1=mean([x1,y1]);
%XY2=mean([x2,y2]);
T3proyect=wn*([x1,y1]');
T4proyect=wn*([x2,y2]');
hold on;
scatter(T3proyect*wn(1),T3proyect*wn(2),30,'b');
scatter(T4proyect*wn(1),T4proyect*wn(2),30,'r');
hold off
% DA significativo!!!!
ranksum(T3proyect,T4proyect)

%%%%%%%%%%%%%%% rankSum sobre R y C %%%%%%%%%%%%%%%%%%%%%%%%
var1=coopMutua;
var2=[cooperacion(1:18,3) [cooperacionT4(1:17,3); 0]];
test_2D(var1,var2)
% figure;
% scatter(var1(8:17,1),var2(9:18,1),20,'b');
% hold on;
% scatter(var1(8:17,2),var2(9:18,2),20,'r');
% hold off;
% figure;
% meanvar1=mean([var1(8:17,1)' var1(8:17,2)']);
% meanvar2=mean([var2(9:18,1)' var2(9:18,2)']);
% %meanvar12=mean(var1(8:17,2));
% %meanvar22=mean(var2(9:18,2));
% scatter(var1(8:17,1)-meanvar1,var2(9:18,1)-meanvar2,20,'b');
% hold on;
% scatter(var1(8:17,2)-meanvar1,var2(9:18,2)-meanvar2,20,'r');
% hold off;
% 
% % proyectas x sobre w
% x1=var1(8:17,1)-meanvar1;
% x2=var1(8:17,2)-meanvar1;
% y1=var2(9:18,1)-meanvar2;
% y2=var2(9:18,2)-meanvar2;
% w= [mean([x1,y1])-mean([x2,y2])] * inv(.5*cov(x1,y1)+.5*cov(x2,y2));
% wn=w/(sqrt(w(1)^2+w(2)^2))
% 
% hold on;
% plot([-1:0.1:1]*wn(1),[-1:0.1:1]*wn(2))
% hold off;
% 
% %XY1=mean([x1,y1]);
% %XY2=mean([x2,y2]);
% T3proyect=wn*([x1,y1]');
% T4proyect=wn*([x2,y2]');
% hold on;
% scatter(T3proyect*wn(1),T3proyect*wn(2),30,'b');
% scatter(T4proyect*wn(1),T4proyect*wn(2),30,'r');
% hold off
% % DA significativo!!!!
% ranksum(T3proyect,T4proyect)