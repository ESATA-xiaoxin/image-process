close all
im=imread('gaoda.jpeg');
whos;

%imshow()  即image show,将图像显示出来
%im   size为 :667x1000x3
%im(a,b,c) a代表行数即667，b代表列数即1000，c表示色彩分量
imshow(im);
imshow(im(:,:,1));    %显示红色分量
imshow(im(:,:,2));    %显示绿色分量
imshow(im(:,:,3));    %显示蓝色分量
%subplot(a,b,c);  将图像按照a * b矩阵排放，即共能放置a*b个图像，a代表行数，b代表列数，c代表序号即图像要摆放的位置
subplot(1,3,1);
imshow(im(:,:,1));
subplot(1,3,2);
imshow(im(:,:,2));
subplot(1,3,3);
imshow(im(:,:,3));

%使用循环完成上述过程
for k=1:3
    subplot(1,3,k);
    imshow(im(:,:,k));
end   %不写end会报错

imshow(im(:,:));   %im（）中不写第三个参数，默认从1到max,将三幅图拼接到一起


figure;
%前面用灰度图像的方式显示了红绿蓝三基色的分量，能否使用红绿蓝三种纯颜色更直观的显示彩色图像的三个分量？
im1=imread('gaoda.jpeg');
[m,n,p]=size(im1);   %将im1的参数赋值给m,n,p
im2=zeros(m,n,p);   %zeros函数zeros(m,n,p)生成p维m*n矩阵
im2(:,:,2)=im1(:,:,2);%显示绿色分量，im2(:,:,1)=im1(:,:,1)显示红色分量，figure图层上显示的是等号前面数字代表的颜色
                      %混合等号后面的数字代表的颜色
im2=uint8(im2);%将im2强制转化为8位无符号型整数
imshow(im2);

figure;
im1=imread('gaoda.jpeg');
[m,n,p]=size(im1);   %将im1的参数赋值给m,n,p
im2=zeros(m,n,p);   %zeros函数zeros(m,n,p)生成p维m*n矩阵
im2(:,:,2)=im1(:,:,1);
im2=uint8(im2);%将im2强制转化为8位无符号型整数
imshow(im2);


figure;
im1=imread('gaoda.jpeg');
[m,n,p]=size(im1);   %将im1的参数赋值给m,n,p
im2=zeros(m,n,p);   %zeros函数zeros(m,n,p)生成p维m*n矩阵
im2(:,:,2)=im1(:,:,3);
im2=uint8(im2);%将im2强制转化为8位无符号型整数
imshow(im2);


% figure;
% imshow(im1);
% imshow(im(:,:,1));


% im(1:2,1:2,1)
% im1(1:2,1:2,1)
% im(1:2,1:2,2)
% im1(1:2,1:2,2)
% im(1:2,1:2,3)
% im1(1:2,1:2,3)