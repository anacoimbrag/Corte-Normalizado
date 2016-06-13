function ncctz(Path,base,k)
Path = [Path  base ];
%==========================================================================
folders = dir(Path);
isub = [folders(:).isdir];
folders = {folders(isub).name}';
folders = folders(3:end);
num = size(folders,1);
%==========================================================================
%permutarK('\Users\ribas\Documents\MATLAB\Corte-Normalizado\1obj\','_mg_5707',100);

    %Pasta parametros, cada subpasta contera uma imagem variando k(pasta k)
    %Path = \Users\ribas\Desktop\v2\MATLAB\ml\Corte-Normalizado\parametros\ 
    %img = 113334665744
    for i=1:num 
        imagemOriginal = imread([Path '\' folders{i} '\src_bw\' folders{i} '.png']);
    
        [Inr,Inc,nb] = size(imagemOriginal);

        if (nb>1),
           imagemOriginal =double(rgb2gray(imagemOriginal));
        else
           imagemOriginal = double(imagemOriginal);
        end
        %mkdir([Path '\' imgbw 'Saida']);%criar pasta Saida
        %mkdir([Path imgbw '\k']);%criar pasta k
        %mkdir([Path imgbw '\SegLabel' num2str(k)]);%criar pasta SegLabel

        %mkdir([Path '\' imgbw 'Saida\' num2str(i)]);
        %Criar subpasta num2str(k) , na pasta Saida
        %copyfile([Path '\' imgbw],[Path '\' imgbw 'Saida\' num2str(i)] );
       % fprintf('---------------------------------------------------------------------------- \n'); 
       % fprintf('Imagem: %s K: %d \n', imgbw, i); 
        disp([Path '\' folders{i} '\src_bw\' folders{i} '.png']);
       % tic
            [SegLabel,NcutDiscrete,NcutEigenvectors,NcutEigenvalues,W,imageEdges]= NcutImage(imagemOriginal,k);
       % toc
        
        %fprintf('\n---------------------------------------------------------------------------- \n'); 

        %imgseg = zeros(size(imagemOriginal,1),size(imagemOriginal,2));

        %idx = SegLabel(:);
        %for j=1:max(idx)
        %    imgseg(idx==j)= uint8((j-1)* floor(254\max(idx)));
        %end  
        
        %imgseg = uint8(imgseg);
        SegLabel = uint8(SegLabel);
        %imwrite(imgseg,[Path '\' imgbw 'Saida\' num2str(i) '\k\' num2str(i) 'k.png']);  
        %imwrite(SegLabel,[Path '\' imgbw '\SegLabel\' num2str(k) 'k.png']); 
        mkdir([Path '\' folders{i} '\' num2str(k) ]);  
        imwrite(SegLabel,[ Path '\' folders{i} '\' num2str(k) '\' folders{i} '.png']);

    end
end




% k = 4;
% Path = '1objMenor';
% MyPath = 'kmeansMultiplo';
% %==========================================================================
% folders = dir(Path);
% isub = [folders(:).isdir];
% folders = {folders(isub).name}';
% folders = folders(3:end);
% num = size(folders,1);
% %==========================================================================
% 
% for i=1:num  
%     
%     fprintf('\nProcessing... image %s\n', folders{i});
%     
%     img = imread([Path '\' folders{i} '\src_bw\' folders{i} '.png']);
%     
%     if size(img,3) == 3
%         img = rgb2gray(img);
%     end
%     
%     [idx centroids] = kmeans(double(img(:)), k);
%     
%     imgseg = zeros(size(img,1),size(img,2));
%     
%     %disp(img([1:50],[1:5]));
%     
%     %for j=1:max(idx)
%     %    imgseg(idx==j)=(j-1)*255;
%     %end  
%     
%     %[idxL,idxC] = size(idx);
%     %for j=1:idxL%max(idx)
%     %    imgseg(j)=(j-1)*255;
%     %end 
%     
%     for j=1:max(idx)
%         imgseg(idx==j)= uint8((j-1)* floor(254\max(idx)));
%     end  
%     imgseg = uint8(imgseg);
%     
%     if i==1
%         imshow(imgseg);
%     end
%     
%     %disp(imgseg([1:50],[1:5]));
%     %imshow(imgseg);
%     %disp(1objMenor\20060319_087\kmeans4Segmentos\20060319_087.png);
%     mkdir([Path '\' folders{i} '\' MyPath]);  
%     imwrite(imgseg,[ Path '\' folders{i} '\' MyPath '\' folders{i} '.png']);   
%     %disp([Path '\' folders{i} '\' MyPath '\' folders{i} '.png']);
% end
% %==========================================================================