function [gaboutt] = LinearFilter(norm_img,ksize,lambda,theta,sigma,ratio)

for k = 1:length(theta)
    gaboutt{1,k} = gaborfilter(norm_img,ksize,lambda,theta(k),sigma,ratio);
end

figure;
subplot(241);
imshow(gaboutt{1,1});title('gabor image, 0 degree');
subplot(242);
imshow(gaboutt{1,2});title('gabor image, pi/8 degree');
subplot(243);
imshow(gaboutt{1,3});title('gabor image, 2*pi/8 degree');
subplot(244);
imshow(gaboutt{1,4});title('gabor image, 3*pi/8 degree');
subplot(245);
imshow(gaboutt{1,5});title('gabor image, 4*pi/8 degree');
subplot(246);
imshow(gaboutt{1,6});title('gabor image, 5*pi/8 degree');
subplot(247);
imshow(gaboutt{1,7});title('gabor image, 6*pi/8 degree');
subplot(248);
imshow(gaboutt{1,8});title('gabor image, 7*pi/8 degree');
end

