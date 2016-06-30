addpath /home/pradeet/Desktop/vlfeat-0.9.16/toolbox
vl_setup
pkg load image
images = cell(1, 2);
% images{1} = imread('pier/1.JPG');
% images{2} = imread('pier/2.JPG');
% images{3} = imread('pier/3.JPG');

images{1} = imread('uttower/uttower_left.jpg');
images{2} = imread('uttower/uttower_right.jpg');

[result, H, num_inliers, residual] = stitch_images(images, 5, 5, 0.03, 1, 100, 4000);

imshow(result);
