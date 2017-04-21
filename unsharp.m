clc,clear;
originalPic=imread('cameraman.tif');
[M,N]=size(originalPic);
h1=1/273*[1,4,7,4,1;                %��˹�˲���
    4,16,26,16,4;
    7,26,47,26,7;
    4,16,26,16,4;
    1,4,7,4,1;];
smoothPic=myFilter(h1,originalPic);
maskPic=originalPic-smoothPic;        %Unsharp ��ģͼ��
unsharpPic=maskPic+originalPic;       %���񻯴���ͼ��
subplot(2,2,1),imshow(originalPic),title('\fontsize{16}ԭʼͼƬ');
subplot(2,2,2),imshow(smoothPic),title('\fontsize{16}ƽ��ͼƬ');
subplot(2,2,3),imshow(maskPic),title('\fontsize{16}��ͼƬ');
subplot(2,2,4),imshow(unsharpPic),title('\fontsize{16}����ͼƬ');
saveas(gcf,mfilename,'jpg');set(gcf,'unit','normalized','position',[0,0,1.0,1.0]);
saveas(gcf,strcat(mfilename,'_pic'),'jpg');