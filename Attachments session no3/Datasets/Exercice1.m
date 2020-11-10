%EXOS PAGES 7 A 11...

% Population
% X variable aléatoire qui a un contenant associe son poids
X = [332,336,340,344,348];

esperance = sum(X)/length(X)
mean(X)

variance = sum( ( X - mean(X) ).^2 ) /length(X)
var(X)   % par défaut la variance est calculée sur un échantillon
var(X,0)
var(X,1)
histogram(X,5)

% Echantillon de taille 2
% tirage avec remise 
% 25 résultats équiprobables
cmpt=1;
for i = 1:5
    for j = 1:5
        res2(cmpt,1)=i;
        res2(cmpt,2)=j;
        cmpt=cmpt+1;
    end
end

for k=1:length(res2)
    tirage2(k,:)=X(res2(k,:));
end
%-------------------Pas capté--------------
% on calcule alors toutes les valeurs prises par Xbarre : variable
% aléatoire Moyenne d'échantillonnage
Xbarre2 = mean(tirage2,2);
%PK MEAN(,2)??????????

figure;hist(Xbarre2,[332:2:348])
% moyennede Xbarre
mean(Xbarre2)
% variance de Xbarre (variance sur toutes les valeurs de la variable!
var(Xbarre2,1)

% Echantillon de taille 3
% tirage avec remise 
% 125 résultats équiprobables
cmpt=1;
for i = 1:5
    for j = 1:5
        for k=1:5
            res3(cmpt,:)=[i,j,k];
            cmpt=cmpt+1;
        end
    end
end

for k=1:length(res3)
    tirage3(k,:)=X(res3(k,:));
end
% on calcule alors toutes les valeurs prises par Xbarre : variable
% aléatoire Moyenne d'échantillonnage
Xbarre3 = mean(tirage3,2);
figure;hist(Xbarre3,[332:348])
% moyennede Xbarre
mean(Xbarre3)
% variance de Xbarre (variance sur toutes les valeurs de la variable!
var(Xbarre3,1)

%----------------Exo Essai fiabilité dispositif (P.27 du cours2.pdf)--------------
Y = norminv(0.025)      %Pour trouver Y tq P(X<Y)=0,1056
Y2 = 1 - normcdf(1.96)