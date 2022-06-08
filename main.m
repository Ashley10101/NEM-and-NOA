% load img
cell_name = 'stimuli.mat';
cell=load(cell_name);
disp('Load Finish');
snakes_index = [184 183 182 181];
grating_index = [179 178 177 176];
%gabor filter
ksize = 20;     % kernel size
lambda = 6;     % wavelength
theta = [0,pi/8,2*pi/8,3*pi/8,4*pi/8,5*pi/8,6*pi/8,7*pi/8]; % orientation
sigma = 4;      % variation
ratio = 0.5;    % spatial aspect ratio
% model configure
w = 0.5;
g = 1;
n = 1;

for index = 1: length(snakes_index) % when test grating, use grating_index
%     figure;
    norm_img=cell2img(cell,snakes_index(index));% when test grating, use grating_index
%     figure;
%     imshow(norm_img);
%******model**************
     r1(index)= NOA(norm_img,w,g,n,ksize,lambda,theta,sigma,ratio);
%      r1_g(index)= NOA(norm_img,w,g,n,ksize,lambda,theta,sigma,ratio);% test grating
%     r2_g(index)= NEM(norm_img,g,n,ksize,lambda,theta,sigma,ratio);% test grating
%     r2(index)= NEM(norm_img,g,n,ksize,lambda,theta,sigma,ratio);
end
