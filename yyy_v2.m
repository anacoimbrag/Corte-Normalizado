

% Executar primeiro a  funcao yyy_v11 , que executara o namalizecut em uma mesma figura variando o k:
%Criar uma pasta chama 1obj, e colocar a pasta com a imagem que sera executada com k valores
%Saida: Sera criado uma pasta no diretorio parametro2 com o nomedaimagem+Saida

%Depois executar  a funcao ComputeFMeasureMultiSeg() e ComputeFMeasure()


% Escolher o melho valor de k e executar na base.

function yyy_v11()
    %permutarK(Path,imgbw,k)
    fprintf('c:/n-----------------------------------[b2chopper008_1]----------------------------------------- \n'); 
    permutarK('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/','b2chopper008',100);
    fprintf('/n-----------------------------------[_3076180_cropped_2]----------------------------------------- \n'); 
    permutarK('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/','_3076180_cropped',100);
    fprintf('c:/n-----------------------------------[_mg_5707_2]----------------------------------------- \n');     
    permutarK('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/','_mg_5707',100);
    fprintf('c:/n-----------------------------------[100_1219_2]----------------------------------------- \n');     
    permutarK('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/','100_1219',100);
    fprintf('c:/n-----------------------------------[00000155_2]----------------------------------------- \n');
    permutarK('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/','00000155',100);
    fprintf('c:/n-----------------------------------[0677845-r1-067-32_a_1]----------------------------------------- \n');
    permutarK('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/','0677845-r1-067-32_a',100);
    fprintf('c:/n-----------------------------------[111876273311_2]----------------------------------------- \n');
    permutarK('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/','111876273311',100);
    fprintf('c:/n-----------------------------------[bbmf_lancaster_july_06_1]----------------------------------------- \n');
    permutarK('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/','bbmf_lancaster_july_06',100);
    fprintf('c:/n-----------------------------------[imagen_072__1_1]----------------------------------------- \n');
    permutarK('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/','imagen_072__1_',100);
    fprintf('c:/n-----------------------------------[imgp2712_1]----------------------------------------- \n');
    permutarK('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/','imgp2712',100);
    %[Results]=ComputeFMeasure('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/parametros','k','win');
    %Results_mean = mean(Results);
    %disp(size(Results));
    
end


function ComputeFMeasureMultiSeg()
[Results]=ComputeFMeasureMultiSeg('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/_3076180_croppedSaida','SegLabel','win');%[Results]=ComputeFMeasureMultiSeg('1obj','kmeans','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/_3076180_croppedSaida/ComputeFMeasureMultiSeg.csv',Results);

[Results]=ComputeFMeasureMultiSeg('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/b2chopper008Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/b2chopper008Saida/ComputeFMeasureMultiSeg.csv',Results);

[Results]=ComputeFMeasureMultiSeg('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/_mg_5707Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/_mg_5707Saida/ComputeFMeasureMultiSeg.csv',Results);

[Results]=ComputeFMeasureMultiSeg('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/100_1219Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/100_1219Saida/ComputeFMeasureMultiSeg.csv',Results);

[Results]=ComputeFMeasureMultiSeg('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/00000155Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/00000155Saida/ComputeFMeasureMultiSeg.csv',Results);

[Results]=ComputeFMeasureMultiSeg('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/0677845-r1-067-32_aSaida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/0677845-r1-067-32_aSaida/ComputeFMeasureMultiSeg.csv',Results);

[Results]=ComputeFMeasureMultiSeg('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/111876273311Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/111876273311Saida/ComputeFMeasureMultiSeg.csv',Results);

[Results]=ComputeFMeasureMultiSeg('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/bbmf_lancaster_july_06Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/bbmf_lancaster_july_06Saida/ComputeFMeasureMultiSeg.csv',Results);

[Results]=ComputeFMeasureMultiSeg('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/imagen_072__1_Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/imagen_072__1_Saida/ComputeFMeasureMultiSeg.csv',Results);

[Results]=ComputeFMeasureMultiSeg('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/imgp2712Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/imgp2712Saida/ComputeFMeasureMultiSeg.csv',Results);

end
function ComputeFMeasure()
[Results]=ComputeFMeasure('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/_3076180_croppedSaida','SegLabel','win');%[Results]=ComputeFMeasureMultiSeg('1obj','kmeans','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/_3076180_croppedSaida/FMeasure.csv',Results);

[Results]=ComputeFMeasure('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/b2chopper008Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/b2chopper008Saida/FMeasure.csv',Results);

[Results]=ComputeFMeasure('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/_mg_5707Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/_mg_5707Saida/FMeasure.csv',Results);

[Results]=ComputeFMeasure('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/100_1219Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/100_1219Saida/FMeasure.csv',Results);

[Results]=ComputeFMeasure('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/00000155Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/00000155Saida/FMeasure.csv',Results);

[Results]=ComputeFMeasure('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/0677845-r1-067-32_aSaida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/0677845-r1-067-32_aSaida/FMeasure.csv',Results);

[Results]=ComputeFMeasure('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/111876273311Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/111876273311Saida/FMeasure.csv',Results);

[Results]=ComputeFMeasure('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/bbmf_lancaster_july_06Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/bbmf_lancaster_july_06Saida/FMeasure.csv',Results);

[Results]=ComputeFMeasure('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/imagen_072__1_Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/imagen_072__1_Saida/FMeasure.csv',Results);

[Results]=ComputeFMeasure('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/imgp2712Saida','SegLabel','win');
csvwrite('c:/Users/aninh/Documents/MATLAB/Corte-Normalizado/1obj/imgp2712Saida/FMeasure.csv',Results);

end
function permutarK(Path,imgbw,k)
    %Pasta parametros, cada subpasta contera uma imagem variando k(pasta k)
    %Path = /Users/aninh/Desktop/v2/MATLAB/ml/Corte-Normalizado/parametros/ 
    %img = 113334665744

    imagemOriginal = imread([Path  imgbw '/src_bw/' imgbw '.png']);
    
    [Inr,Inc,nb] = size(imagemOriginal);

    if (nb>1),
        imagemOriginal =double(rgb2gray(imagemOriginal));
    else
        imagemOriginal = double(imagemOriginal);
    end
    mkdir([Path '/' imgbw 'Saida']);%criar pasta Saida
    mkdir([Path imgbw '/k']);%criar pasta k
    mkdir([Path imgbw '/SegLabel']);%criar pasta SegLabel
    for i=1:k
        mkdir([Path '/' imgbw 'Saida/' num2str(i)]);
        %Criar subpasta num2str(k) , na pasta Saida
        copyfile([Path '/' imgbw],[Path '/' imgbw 'Saida/' num2str(i)] );
        fprintf('---------------------------------------------------------------------------- \n'); 
        fprintf('Imagem: %s K: %d \n', imgbw, i); 
        
        tic
            [SegLabel,NcutDiscrete,NcutEigenvectors,NcutEigenvalues,W,imageEdges]= NcutImage(imagemOriginal,i);
        toc
        
        fprintf('\n---------------------------------------------------------------------------- \n'); 

        imgseg = zeros(size(imagemOriginal,1),size(imagemOriginal,2));

        idx = SegLabel(:);
        for j=1:max(idx)
            imgseg(idx==j)= uint8((j-1)* floor(254/max(idx)));
        end  
        
        imgseg = uint8(imgseg);
        SegLabel = uint8(SegLabel);
        imwrite(imgseg,[Path '/' imgbw 'Saida/' num2str(i) '/k/' num2str(i) 'k.png']);  
        imwrite(SegLabel,[Path '/' imgbw 'Saida/' num2str(i) '/SegLabel/' num2str(i) 'k.png']); 

    end

end

%sudo find . -name ?*.DS_Store? -type f -delete