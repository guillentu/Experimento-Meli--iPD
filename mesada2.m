QxExp_ante=matricesQxExp
Q_antes=matricesQ;
QQ=[];
QQTot=zeros(2,2,_nSujetos);
QQTotmarkov=zeros(2,2,_nSujetos);
QQTotmarkovSem=zeros(2,2,_nSujetos);
for i=1:_nSujetos
  ultimo=expXsuj(i);
  primero=ultimo-_ultimosX+1;
  jj=0;
  aux2=[];
  for j=primero:ultimo %Experimentos
    jj++  %| la P(c|c) es igual a la sumatorias en "sum(x ,1)" de P(c|R) y P(c|S) y las otras filas lsa compo ponentes son cero
    i
    aux = sum(QxExp_ante.(indiceSujeto(i,:)).(indice(j+1,:)))% P(d|c) P(c|c) P(d|d) P(c|d) 
    aux2=[aux2 aux'./[aux(1)+aux(3);aux(2)+aux(4);aux(1)+aux(3);aux(2)+aux(4)]];
    QQTot(:,:,i)=QQTot(:,:,i) + [aux(sort(1:4,'descend'))(3:4); aux(sort(1:4,'descend'))(1:2)];% se ordena par que tengal a lforma 2x2
    QQ.(indiceSujeto(i,:)).(num2str(jj))=[aux(sort(1:4,'descend'))(3:4); aux(sort(1:4,'descend'))(1:2)];%./sum(sum(QxExp_ante.(indiceSujeto(i,:)).(indice(j+1,:)))),1)';
  endfor
  QQTotmarkov(1,:,i)=QQTot(1,:,i)./sum(QQTot(:,:,i),2)(1);%QQTot = P(c|c) P(d|c) => vec(QQTot)
  QQTotmarkov(2,:,i)=QQTot(2,:,i)./sum(QQTot(:,:,i),2)(2);%        P(c|d) P(d|d)  P(c|c) P(c|d) P(d|c) P(d|d)
                         % sem cc             dc           cd                dd
  QQTotmarkovSem(:,:,i)= [ sem(aux2,2)(2) sem(aux2,2)(1); sem(aux2,2)(4) sem(aux2,2)(3)];
endfor