load('GT_Trento.mat');%数值为0至6整数。[0，6],int.
myColormap = jet(7);  % 离散颜色分类。Build Disperse Colormap.
figure(1)%窗口1。Picture1.
imshow(GT_Trento, myColormap);
colorbar; % 显示颜色条。Show Colorbar.
title('GT\_Trento Image'); % 添加标题。Show Title.

load('Lidar_Trento'); 
Lidar_Trento = mat2gray(Lidar_Trento);
%数值为0至20.153小数。[0，20.153],double.
figure(2)
imshow(Lidar_Trento);
colorbar; 
title('Lidar\_Trento Image'); 

load('HSI_Trento'); 
%数值为6至6247的小数。[6，6247],double.
dim=1;
HSI_Trento_slice=HSI_Trento(:,:,dim);
%dim取值[1,63]。1<=dim<=63.
HSI_Trento_slice = mat2gray(HSI_Trento_slice);
figure(3)
imshow(HSI_Trento_slice);
colorbar; 
title(['HSI\_Trento\_slice ' ,num2str(dim),' Image']); 





