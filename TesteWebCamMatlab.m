x=videoinput('winvideo',1);
for i=1:10
    img=getsnapshot(x);
    fname=['Imagem' num2str(i)];
    imwrite(img,fname,'jpg');
    pause(3);
end
