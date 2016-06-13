function demoNcutImage;
% demoNcutImage
% 
% demo for NcutImage
% also initialize matlab paths to subfolders
% Timothee Cour, Stella Yu, Jianbo Shi, 2004.

k = 3;
Path = '1obj';
MyPath = 'ncut';
%==========================================================================
folders = dir(Path);
isub = [folders(:).isdir];
folders = {folders(isub).name}';
folders = folders(3:end);
num = size(folders,1);
%=======================

disp('Ncut Image Segmentation demo');
tic;
%% read image, change color image to brightness image, resize to 160x160
for i=1:num  
    
    fprintf('\nProcessing... image %s\n', folders{i});
    
    img = imread([Path '/' folders{i} '/src_bw/' folders{i} '.png']);
    [l,w] = size(img);
    I = imread_ncut([Path '/' folders{i} '/src_bw/' folders{i} '.png'],l,w);

    %% display the image
    figure(1);clf; imagesc(I);colormap(gray);axis off;
    disp('This is the input image to segment, press Enter to continue...');

    %% compute the edges imageEdges, the similarity matrix W based on
    %% Intervening Contours, the Ncut eigenvectors and discrete segmentation
    nbSegments = 4;
    disp('computing Ncut eigenvectors ...');
    tic;
    [SegLabel,NcutDiscrete,NcutEigenvectors,NcutEigenvalues,W,imageEdges]= NcutImage(I,nbSegments);
    disp(['The computation took ' num2str(toc) ' seconds on the ' num2str(size(I,1)) 'x' num2str(size(I,2)) ' image']);

    imgseg = zeros(size(img,1),size(img,2));
    
    for j=1:nbSegments
        imgseg(SegLabel==j)=floor(255/nbSegments) * j;
    end 
    
    mkdir([Path '/' folders{i} '/' MyPath]);    
    imwrite(imgseg,[ Path '/' folders{i} '/' MyPath '/' folders{i} '.png']);  
    %% display the edges
    figure(2);clf; imagesc(imageEdges); axis off
    disp('This is the edges computed, press Enter to continue...');

    %% display the segmentation
    figure(3);clf
    bw = edge(SegLabel,0.01);
    J1=showmask(I,imdilate(bw,ones(2,2))); imagesc(J1);axis off
    disp('This is the segmentation, press Enter to continue...');

    %% display Ncut eigenvectors
    figure(4);clf;set(gcf,'Position',[100,500,200*(nbSegments+1),200]);
    [nr,nc,nb] = size(I);
    for i=1:nbSegments
        subplot(1,nbSegments,i);
        imagesc(reshape(NcutEigenvectors(:,i) , nr,nc));axis('image');axis off;
    end
    disp('This is the Ncut eigenvectors...');
    disp('The demo is finished.');
    toc;
end
