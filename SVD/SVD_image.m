

%check with these three values of 'k', 
%what value of k gives you the best output?
img = imread('img1.bmp'); % Read image
R = double(img(:,:,1)); % Red channel
G = double(img(:,:,2)); % Green channel
B = double(img(:,:,3)); % Blue channel

count = 1;

k = 50;

[U S V] = svd(R);
s = diag(S);    
Unew = U(:,1:k);
Snew = diag(s(1:k));
Vnew = V(:,1:k);    
R1 = uint8(Unew*Snew*Vnew');

[U S V] = svd(G);
s = diag(S);    
Unew = U(:,1:k);
Snew = diag(s(1:k));
Vnew = V(:,1:k);    
G1 = uint8(Unew*Snew*Vnew');

[U S V] = svd(B);
s = diag(S);    
Unew = U(:,1:k);
Snew = diag(s(1:k));
Vnew = V(:,1:k);    
B1 = uint8(Unew*Snew*Vnew');

figure(count)
rgbImage = cat(3, R1, G1, B1);
imshow(rgbImage);
a = ['Image using only ' num2str(k) ' singular values'];
title(a)

    
