function [ I1, I2, I3, I4, I5, I6, I7, I8, I9 ] = overlapImageForLBP( I )
%OVERLAPIMAGEFORLBP �� �Լ��� ��� ���� ��ġ
%   �ڼ��� ���� ��ġ

%  I = rgb2gray(imread('real.jpg'));
 % I = rgb2gray(imread('kt_160118_00191_01_fsd_image_G.bmp'));
 [sizeRow sizeCol] = size(I); 
 %    ------------------
 %    |  I1     I4     I7 |
 %    |  I2     I5     I8 |
 %    |  I3     I6     I9 |
 %    ------------------
 
% ���� �ڸ��� ��� 
% unitRow = sizeRow/3;
%  unitCol = sizeCol/3;
%  rangeRow = uint16(sizeRow/4.5);
%  rangeCol = uint16(sizeCol/4.5);
%  halfRangeRow = rangeRow/2;
%  halfRangeCol = rangeCol/2;
%  I1 = I(1:unitRow + rangeRow, 1:unitCol+rangeCol);
%  I2 = I(unitRow-halfRangeRow:unitRow*2+halfRangeRow, 1:unitCol+rangeCol);
%  I3 = I(sizeRow-unitRow-rangeRow:sizeRow, 1:unitCol+rangeCol);
%  
%  I4 = I(1:unitRow + rangeRow, unitCol-halfRangeCol:unitCol*2+halfRangeCol);
%  I5 = I(unitRow-halfRangeRow:unitRow*2+halfRangeRow, unitCol-halfRangeCol:unitCol*2+halfRangeCol);
%  I6 = I(sizeRow-unitRow-rangeRow:sizeRow, unitCol-halfRangeCol:unitCol*2+halfRangeCol);
%  
%  I7 = I(1:unitRow + rangeRow, sizeCol-unitCol-rangeCol:sizeCol);
%  I8 = I(unitRow-halfRangeRow:unitRow*2+halfRangeRow, sizeCol-unitCol-rangeCol:sizeCol);
%  I9 = I(sizeRow-unitRow-rangeRow:sizeRow, sizeCol-unitCol-rangeCol:sizeCol);

 % c�������� ¥�鼭 �ٽ� ������ ����� �Ͽ���. ���� ����� �ʹ� ��ġ���.. 2015 02 15
 %    �׸��� �� �켱���� �� �켱����
 %    |  I1     I2     I3 |
 %    |  I4     I5     I6 |
 %    |  I7     I8     I9 |
 %    ------------------
 % ���� 1 ~ 52, 34 ~ 86, 68 ~ 120
 % ���� 1 ~ 62, 41 ~ 103, 82 ~ 144 
I1 = I(1:62, 1:52);
I2 = I(1:62, 34:86);
I3 = I(1:62, 68:sizeCol);

I4 = I(41:103, 1:52);
I5 = I(41:103, 34:86);
I6 = I(41:103, 68:sizeCol);

I7 = I(82:sizeRow, 1:52);
I8 = I(82:sizeRow, 34:86);
I9 = I(82:sizeRow, 68:sizeCol);

% KT ���� ��, �Ȱ� ������ �ٽ� �߶� ����, �׸���  �� �߽�����.
% I1 = I(1:30, 1:52);
% I2 = I(1:30, 34:86);
% I3 = I(1:30, 68:120);
% 
% I4 = I(31:70, 1:52);
% I5 = I(31:70, 34:86);
% I6 = I(31:70, 68:120);
% 
% I7 = I(71:120, 1:52);
% I8 = I(71:120, 34:86);
% I9 = I(71:120, 68:120);
% 
% I10 = I(94:144, 1:52);
% I11 = I(94:144, 34:86);
% I12 = I(94:144, 68:120);
% 
% 
%  figure, imshow(I);
%  figure, imshow(I1);
%  figure, imshow(I2);
%  figure, imshow(I3);
%  figure, imshow(I4);
%  figure, imshow(I5);
%  figure, imshow(I6);
%  figure, imshow(I7);
%  figure, imshow(I8);
%  figure, imshow(I9);
%  figure, imshow(I10);
%  figure, imshow(I11);
%  figure, imshow(I12);
 
end

