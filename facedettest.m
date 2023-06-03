close all;
clear all;
clc;
flag = 0;
img_size = [227,227];

folders = fullfile('basedonnees1');
%Detect objects using Viola-Jones Algorithm

%To detect Face
FDetect = vision.CascadeObjectDetector;    
imds = imageDatastore(folders,'IncludeSubfolders',true,'LabelSource','foldernames');
tbl = countEachLabel(imds)
[trainImgs,testImgs] = splitEachLabel(imds,0.9);

%reading an image from the datastore
%Img = readimage(testImgs,50)

%[fileName,pathName] = uigetfile('0002 - Copie.jpg')
[fileName,pathName] = uigetfile('im262.jpg')
Img = imread(fullfile(pathName, fileName));


I = imresize(Img,img_size);
imshow(I);
hold on
title('Input Image');
hold off;

BB = step(FDetect,I);
if(isempty(BB))
    msgbox("No Face Detected",'Conclusion');
else
    figure,
    imshow(I); hold on
    for i = 1:size(BB,1)
        rectangle('Position',BB(i,:),'LineWidth',5,'LineStyle','-','EdgeColor','r');
    end
    title('Face Detection');
    hold off;
    
    NoseDetect = vision.CascadeObjectDetector('Nose','MergeThreshold',16);
    BB=step(NoseDetect,I);
    flag = isempty(BB)

    figure,
    imshow(I); hold on
    for i = 1:size(BB,1)
        rectangle('Position',BB(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','b');
    end
    title('Nose Detection');
    hold off;

    %To detect Mouth
    MouthDetect = vision.CascadeObjectDetector('Mouth','MergeThreshold',16);

    BB=step(MouthDetect,I);
    flag = flag | isempty(BB)

    figure,
    imshow(I); hold on
    for i = 1:size(BB,1)
        rectangle('Position',BB(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','r');
    end
    title('Mouth Detection');
    hold off;

    if(flag == 1)
        msgbox("port du masque proprement ",'Conclusion');
    else
        msgbox("aucun masque detecté",'Conclusion');
    end
end

