function avaliar() 
         K = [1,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100];%base 2obj
    
    A = zeros(length(K),4);

    for i=1:length(K)         
         [Results]=ComputeFMeasure('C:\Users\aninh\Documents\MATLAB\Corte-Normalizado\2obj',num2str(K(i)),'win');
         Aux = mean(Results);
         A(i,1) = Aux(1,1);
         A(i,2) = Aux(1,2);
         A(i,3) = Aux(1,3);
         A(i,4) = K(i);
    end

 save('2objFMensure');
 csvwrite('2objFMensure.csv',A);
 figure()
 plot(A(:,4),A(:,3));
end
