function [r] = NOA(norm_img,w,g,n,ksize,lambda,theta,sigma,ratio)

%gabor filter
gaboutt = LinearFilter(norm_img,ksize,lambda,theta,sigma,ratio);

%Pooling across Orientation and Space
for k = 1:length(gaboutt)
    Eori(k) = sum(sum(gaboutt{1,k}))/(166*166);
end
ave_Eori = sum(Eori)/8;
var_Eori = sum((Eori-ave_Eori).*(Eori-ave_Eori));
s=1/8*sum(Eori.*Eori/(1+w*w*var_Eori));

%nonlinearity power law
r=g*(s^n);
disp('Compute Finish');
end

