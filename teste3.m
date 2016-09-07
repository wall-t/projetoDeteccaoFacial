clear all
clc
FDetect = vision.CascadeObjectDetector;
x=videoinput('winvideo',1);
preview(x);
for i=1:10
    img=getsnapshot(x);
   
   I = img;
   
    BB = step(FDetect,I);

figure,
imshow(I); hold on
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',5,'LineStyle','-','EdgeColor','r');
end
title('Detecção Facial');
hold off;

    
    pause(2);
end
   

