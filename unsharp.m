clc,clear;
originalPic=imread('cameraman.tif');
[M,N]=size(originalPic);
h1=1/273*[1,4,7,4,1;                %高斯滤波器
    4,16,26,16,4;
    7,26,47,26,7;
    4,16,26,16,4;
    1,4,7,4,1;];
smoothPic=myFilter(h1,originalPic);
maskPic=originalPic-smoothPic;        %Unsharp 掩模图像
unsharpPic=maskPic+originalPic;       %反锐化处理图像
subplot(2,2,1),imshow(originalPic),title('\fontsize{16}原始图片');
subplot(2,2,2),imshow(smoothPic),title('\fontsize{16}平滑图片');
subplot(2,2,3),imshow(maskPic),title('\fontsize{16}锐化图片');
subplot(2,2,4),imshow(unsharpPic),title('\fontsize{16}反锐化图片');
saveas(gcf,mfilename,'jpg');set(gcf,'unit','normalized','position',[0,0,1.0,1.0]);
saveas(gcf,strcat(mfilename,'_pic'),'jpg');