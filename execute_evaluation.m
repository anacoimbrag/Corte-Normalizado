[Results]=ComputeFMeasure('c:\Users\aninh\Documents\MATLAB\Corte-Normalizado\1obj','ncut','win');
%[Results]=ComputeFMeasureMultiSeg('1obj','kmeans','win');

Results_mean = mean(Results);



%revoca��o = acertos/total de acertos
%precis�o = acertos / (acertos + erros)
%f1 = 2*(r * p) / r + p