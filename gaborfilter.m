function gabout = gaborfilter(I,ksize,lambda,theta,sigma,ratio)
% input
%   I: input image
%   ksize: kernel size
%   lambda: wavelength
%   theta: orientation
%   phase: pahse angle
%   sigma: variation
%   ratio: spatial aspect ratio
% output
%   g: gabor filter
d = ksize/2;
g1 = zeros(ksize, ksize);
for x = 1:ksize
    xd = x - d;  % distance from the center
    for y = 1:ksize
        yd = y - d;
        xn = xd*cos(theta) + yd*sin(theta);
        yn = -xd*sin(theta) + yd*cos(theta);
        g1(x,y) = exp(-(xn^2+ratio^2*yn^2)/(2*sigma^2))*exp(1i*(2*pi*xn/lambda));
    end
end

g2 = zeros(ksize, ksize);
for x = 1:ksize
    xd = x - d;  % distance from the center
    for y = 1:ksize
        yd = y - d;
        xn = xd*cos(theta) + yd*sin(theta);
        yn = -xd*sin(theta) + yd*cos(theta);
        g2(x,y) = exp(-(xn^2+ratio^2*yn^2)/(2*sigma^2))*exp(1i*(2*pi*xn/lambda+pi/2));
    end
end

[m,n] = size(I);
% pad image
Ip = zeros(m+ksize, n+ksize);
Ip(d+1:d+m, d+1:d+n)=I;
g1 = real(g1);% only use the real part of gabor filter
g2 = real(g2);% only use the real part of gabor filter
Ig1 = zeros(m,n);
for x = 1:m
    for y = 1:n
        Ig1(x,y) = sum(sum(Ip(x:x+ksize-1,y:y+ksize-1).*g1));
    end
end
Ig2 = zeros(m,n);
for x = 1:m
    for y = 1:n
        Ig2(x,y) = sum(sum(Ip(x:x+ksize-1,y:y+ksize-1).*g2));
    end
end

% Imgabout = conv2(I,double(imag(G)),'same');
% Regabout = conv2(I,double(real(G)),'same');
gabout = Ig1.*Ig1+Ig2.*Ig2;  %gabor小波变换后的图像gabout
end