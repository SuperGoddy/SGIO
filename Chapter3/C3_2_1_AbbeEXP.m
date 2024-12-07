%============================================
% Demostration for ABExp. 
% supergoddy@qq.com
% Apr.2nd,2023
%============================================
clear all
dim1=256;
dim2=dim1;
T=meshgen(dim1,dim2,8,8,0);
T=1-T;
L=1-linegen(dim1,dim2,'vertical',2,128);
fT=fftshift(fft2(T));
ift=imag(fT);rft=real(fT);
fixedfT=rft.*L+1i*ift.*L;
emg=fftshift(ifft2(fixedfT));
img=emg.*conj(emg);
imagesc(img);
colormap(gray)

function A=linegen(x,y,direction,width,pos)
a=ones(x,y);
switch(direction)
case('horizontal')
    a(pos-width/2:pos+width/2,:)=0;
case('vertical')
    a(:,pos-width/2:pos+width/2)=0;
end
A=a;
end
function A=meshgen(x,y,dx,dy,flip)
a=zeros(x,y);
for in=1:x
        if mod(in,dx)==0
            a(in,:)=1;
        end
end
for in=1:y
        if mod(in,dy)==0
            a(:,in)=1;
        end
end
if flip==1
    A=1-a;
else
    A=a;
end
end



