function [norm_img] = cell2img(cell,index)
%a=load(cell_name);
img_array = cell2mat(cell.images(1,index)); %800x800x9 uint8
img = img_array(:,:,2); %800x800 uint8
img=mat2gray(img);
min_img = min(min(img));
max_img = max(max(img));
desired_min = -0.5;
desired_max = 0.5;
norm_img = (img-min_img)/(max_img-min_img)*(desired_max-desired_min)+desired_min;
disp('Cell to Image Finish');
end

