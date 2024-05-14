x = [3,11,7,0,-1,4,2]; nx = [-3:3];
h = [2,3,0,-5,2,1]; nh = [-1:4];
subplot(1,1,1)
subplot(2,2,1); stem(nx-0.05,x); axis([-5,5,-6,12]);
hold on; stem(nh+0.05,h,':')
title('x(k) and h(k)');xlabel('k');
text(-0.5,11,'solid: x    dashed: h'); hold off
subplot(2,2,2); stem(nx-0.05,x); axis([-5,5,-6,12]);
hold on; stem(-fliplr(nh)+0.05,fliplr(h),':')
title('x(k) and h(-k)');xlabel('k');
text(-0.5,-1,'n=0')
text(-0.5,11,'solid: x    dashed: h'); hold off
subplot(2,2,3); stem(nx-0.05,x); axis([-5,5,-6,12]);
hold on; stem(-fliplr(nh)+0.05-1,fliplr(h),':')
title('x(k) and h(-1-k)');xlabel('k');
text(-1.5,-1,'n=-1')
text(-0.5,11,'solid: x    dashed: h'); hold off
subplot(2,2,4); stem(nx-0.05,x); axis([-5,5,-6,12]);
hold on; stem(-fliplr(nh)+0.05+2,fliplr(h),':')
title('x(k) and h(2-k)');xlabel('k');
text(2-0.5,-1,'n=2')
text(-0.5,11,'solid: x    dashed: h'); hold off