% plotting data
clc 
% ***************  4.  plotting data ***************
% --------- basic plot ---------------
% t = 0:0.01:0.98;
% y1 = sin(2*pi*4*t);
% plot(t,y1);
% % plot(x,y,点的样式(r=red,x为叉型),标记大小,设置标记大小为10)
% plot(t,y1,'rx','MarkerSize',10);
% --------- multipul plots ------------------
% hold on; %plot the new figure on top of the old one
% y2 = cos(2*pi*4*t);
% plot(t,y2); 
% --------- multipul plots ------------------
% xlabel('time'); % lable for x axis
% ylabel('value');
% legend('sin','cos');
% title('my plot');
% print -dpng 'myPlog.png';  % save the figure
% close % close the window of the fiture
% help plot
% % figure(1); plot(t,y1);
% figure(2); plot(t,y2); % plot in different windows/figures
% subplot(1,2,1); plot(t,y1);%devides plot a 1×2 trid, access first element
% subplot(1,2,2); plot(t,y2);%devides plot a 1×2 trid, access second element
% axis([0.5 1 -1 1]) % x axis range to 0.5 ~1, y ranges to -1~1
% clf; % clear figure

% visualize a matrix
% A = magic(5)
% imagesc(A), colorbar, colormap gray % show colorbar, make it gray

% -------------- 3D figure -----------
x = 1:5;
y = 1:5;

z = zeros(5,5);
for i = 1:5
    for j = 1:5
        z(i,j) = x(i) * y(j);
    end
end
z
surf(x,y,z);
figure(2); contour(x,y,z,logspace(-2, 3, 20))




