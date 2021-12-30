close all;
clear all;
clc;
rgbImage=imread('input/1.jpg');
rgbImage=im2double(rgbImage);
grayImage = rgb2gray(rgbImage);
redChannel = rgbImage(:, :, 1);
greenChannel = rgbImage(:, :, 2);
blueChannel = rgbImage(:, :, 3);

meanR = mean2(redChannel);
meanG = mean2(greenChannel);
meanB = mean2(blueChannel);
meanGray = mean2(grayImage);

redChannel = (double(redChannel) * meanGray / meanR);
greenChannel = (double(greenChannel) * meanGray / meanG);
blueChannel = (double(blueChannel) * meanGray / meanB);

redChannel=redChannel-0.3*(meanG-meanR).*greenChannel.*(1-redChannel);
blueChannel=blueChannel+0.3*(meanG-meanB).*greenChannel.*(1-blueChannel);


% Recombine separate color channels into a single, true color RGB image.
rgbImage_white_balance = cat(3, redChannel, greenChannel, blueChannel);

figure('Name','Color Enhancement');
subplot(221);
imshow(redChannel);
title('Suppressed Red Channel');

subplot(222);
imshow(blueChannel);
title('Enhanced Blue Channel');

subplot(223);
imshow(greenChannel);
title('Green Channel');

subplot(224);
imshow(rgbImage_white_balance);
title('After White balance');
I = imadjust(rgbImage_white_balance,[],[],0.5);

J=(rgbImage_white_balance+(rgbImage_white_balance-imgaussfilt(rgbImage_white_balance)));

figure('Name','Step I-III');
subplot(221);
imshow(rgbImage);
title('Original Image');

subplot(222);
imshow(rgbImage_white_balance);
title('I. White Balance');

subplot(223);
imshow(I);
title('II. Gamma Corrected');
subplot(224);
imshow(J);
title('III. Sharpened');


XFUS = wfusimg(I,J,'sym4',5,'max','max');

figure('Name','Final Comparison');
subplot(121);
imshow(rgbImage);
title('Original');

subplot(122);
imshow((histeq(XFUS)));

title('IV. Wavelet fusion');

figure
imshow((histeq(XFUS)));
saveas(gcf, 'output/test', 'png')