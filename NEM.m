function [r] = NEM(norm_img,g,n,ksize,lambda,theta,sigma,ratio)

%gabor filter
gaboutt = LinearFilter(norm_img,ksize,lambda,theta,sigma,ratio);

%Pooling across Orientation and Space
s=sum(sum(cell2mat(gaboutt)))/(8*166*166);

%Nonlinearity power law
r=g*(s^n);
disp('Compute Finish');
end

