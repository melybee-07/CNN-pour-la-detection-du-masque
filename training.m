clc;

layers = [
    imageInputLayer([227 227 3],"Name","imageinput")
    convolution2dLayer([3 3],3,"Name","conv_1","Padding","same")
    batchNormalizationLayer("Name","batchnorm_1")
    reluLayer("Name","relu_1")
    maxPooling2dLayer([2 2],"Name","maxpool_1","Padding","same")
    convolution2dLayer([3 3],3,"Name","conv_2","Padding","same")
    batchNormalizationLayer("Name","batchnorm_2")
    reluLayer("Name","relu_2")
    maxPooling2dLayer([2 2],"Name","maxpool_2","Padding","same")
    convolution2dLayer([3 3],3,"Name","conv_3","Padding","same")
    batchNormalizationLayer("Name","batchnorm_3")
    reluLayer("Name","relu_3")
    fullyConnectedLayer(3,"Name","fc")
    softmaxLayer("Name","softmax")
    classificationLayer("Name","classoutput")];

ins=layers(1).InputSize;

    folders = fullfile('basedonnees1');
     
    imds = imageDatastore(folders,'IncludeSubfolders',true,'LabelSource','foldernames');
    tbl = countEachLabel(imds)
    [trainImgs,testImgs] = splitEachLabel(imds,0.9);
    
    audsTrain=augmentedImageDatastore([227 227 3],trainImgs);
    audsTest=augmentedImageDatastore([227 227 3],testImgs);
    
    
  
 opts = trainingOptions('sgdm', ...
          'Plots', 'training-progress', ...
          'validationData',audsTest,...
          'MaxEpochs',30,...
          'MiniBatchSize', 32,...
          'InitialLearnRate',0.001);
           
net = trainNetwork(audsTrain,layers,opts);
gen_net = net;
save gen_net;
