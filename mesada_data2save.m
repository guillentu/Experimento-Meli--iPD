%_promediosC_T4=_promediosC;
%_mediaXsujeto_T4=_mediaXsujeto;
%_semXsujeto_T4=_stdXsujeto;
%food_T4=food;
%_timeOut_T4=_timeOut;
%_timeOutMedia_T4=_timeOutMedia;
%_timeOutSem_T4=_timeOutSem;
%foodMedia_T4=foodMedia;
%foodSem_T4=foodSem;
%
%save datos_evolucion_C_R_T "_promediosC_T4" "_mediaXsujeto_T4" "_semXsujeto_T4" "food_T4" "_timeOut_T4" "_timeOutMedia_T4" "_timeOutSem_T4" "foodMedia_T4" "foodSem_T4";

load  datos_evolucion_C_R_T;
figure();
hold on;
for i=[1 3 4]%1:_nSujetos
  inicioAux=1;%expXsuj(i)-_ultimosX+1;
  finAux=expXsuj(i);
  h=plot([inicioAux:finAux],_promediosC(inicioAux:finAux,i),_colores(i,:));
  set(h, "linewidth", 2);
  hh=xlabel("n de sesiones");set(hh, "fontsize", 14);
  hh=ylabel("% de cooperacion");set(hh, "fontsize", 14);
  hh=title(strcat("Cooperacion en iPD en sujetos No Coop: ",num2str(_criterio,2)));
  %axis([1 10 0 1]);
  set(hh, "fontsize", 14);
  grid on;
endfor
legend(_txtSujetos([1 3 4],:),4);