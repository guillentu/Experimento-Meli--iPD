clear all;
load('/home/guille/Documents/github_Repository/experimento/Experimento---iPD/ExtraerDatos/datos_food_reward_T2.mat');
food_T2=food;
timeOut_T2=timeOut;
% load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_food_reward_T3.mat');
% food_T3=food;
% timeOut_T3=timeOut;
% load('/home/guille/Documents/github_Repository/experimento/Experimento-Meli--iPD/datos_food_reward_T4.mat');
% food_T4=food;
% timeOut_T4=timeOut;

i=1;
var1=[food_T2(:,i) food_T];
var2=[cooperacion(1:18,3) [cooperacionT4(1:17,3); 0]];
test_2D(var1,var2)