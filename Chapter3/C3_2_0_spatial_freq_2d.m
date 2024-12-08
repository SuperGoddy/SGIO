%============================================
% Demonstration for 2D-SpatialFrequency
% supergoddy@qq.com
% Apr.1st,2023
%============================================
clear all;
lambda=1;
l1=10;
k=2*pi/lambda;
DEGREES=pi/180;
for in=1:1:360
alpha=20*DEGREES;
beta=in*DEGREES;
gamma=sqrt(1-(cos(alpha))^2-(cos(beta))^2);
kx=k*cos(alpha);
ky=k*cos(beta);
kz=k*cos(gamma);
z=1;
x=linspace(-2*lambda,2*lambda,128);
y=x;
[X,Y]=meshgrid(x,y);
U=sin(kx*X+ky*Y+kz*z);

colormap(gray)

subplot(2,3,6)
quiver3(0,0,0,kx,ky,kz,'r-','LineWidth',1);
view(80,30);
hold on
xlabel('x');ylabel('y');zlabel('z');
set(gca,"XLim",[-l1,l1],"YLim",[-l1,l1],"ZLim",[-l1,l1]);
line([-l1,l1],[0,0],[0,0]);
line([0,0],[0,0],[-l1,l1]);
line([0,0],[-l1,l1],[0,0]);
hold off
subplot(2,3,3)
quiver3(0,0,0,kx,ky,kz,'r-','LineWidth',1);hold on
view(90,-90);
xlabel('x');ylabel('y');zlabel('z');
set(gca,"XLim",[-l1,l1],"YLim",[-l1,l1],"ZLim",[-l1,l1]);
line([-l1,l1],[0,0],[0,0]);
line([0,0],[0,0],[-l1,l1]);
line([0,0],[-l1,l1],[0,0]);
hold off;
subplot(2,3,[1:2,4:5])
imagesc(U)
drawnow;
hold off
end





