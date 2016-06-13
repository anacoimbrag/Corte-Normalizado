k = 3;
Path = '1obj';
MyPath = 'kmeans';
%==========================================================================
folders = dir(Path);
isub = [folders(:).isdir];
folders = {folders(isub).name}';
folders = folders(3:end);
num = size(folders,1);
%==========================================================================
disp('fui chamado');
for i=1:num  
    
    fprintf('\nProcessing... image %s\n', folders{i});
    
    img = imread([Path '/' folders{i} '/src_bw/' folders{i} '.png']);
    
    if size(img,3) == 3
        img = rgb2gray(img);
    end
    
    [idx centroids] = kmeans(double(img(:)), k);
    disp(size(idx,1));
    disp(size(idx,2));
    imgseg = zeros(size(img,1),size(img,2));
    
    for j=1:max(idx)
        imgseg(idx==j)=(j-1)*255;
    end   
    
    mkdir([Path '/' folders{i} '/' MyPath]);    
    imwrite(imgseg,[ Path '/' folders{i} '/' MyPath '/' folders{i} '.png']);   
end
%==========================================================================