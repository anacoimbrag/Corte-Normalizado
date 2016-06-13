function exec()
    K = [1,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100];
    maior = 0;
    for i=1:length(K)
         %ncctz('c:\Users\aninh\Documents\MATLAB\Corte-Normalizado\','2obj',K(i));
         [Results]=ComputeFMeasureMultiSeg('c:\Users\aninh\Documents\MATLAB\Corte-Normalizado\2obj',num2str(K(i)),'win');
         csvwrite(['c:\Users\aninh\Documents\MATLAB\Corte-Normalizado\K' num2str(K(i)) 'ResultsMulti.txt' ],Results);
         csvwrite(['C:\Users\aninh\Documents\MATLAB\Corte-Normalizado\K' num2str(K(i)) 'ResultsMeanMulti.txt' ],mean(Results));
    end
%     K2 = [3];
%     for i=1:length(K)
%          ncctz('\Users\ribas\Documents\MATLAB\Corte-Normalizado\2obj\','2obj\',K2(i));
%     end
end

