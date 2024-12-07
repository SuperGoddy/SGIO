clear all;
x=linspace(-5,5,256);
y=linspace(-5,5,256);
[X,Y]=meshgrid(x,y);
A=zeros(256);
A((X.^2+Y.^2)<.25)=1;
fA=fftshift(fft2(A));
A(127:129,:)=0;
% A(:,127:129)=0;
subplot(132)
imagesc(real(A));axis off
subplot(131)
imagesc((abs(fA)))
axis off
subplot(133)
imagesc((abs(fftshift(fft2((A))))))
axis off
colormap(hot)
