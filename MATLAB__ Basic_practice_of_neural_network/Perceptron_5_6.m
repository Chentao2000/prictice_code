%% 单层感知器 的 MATLAB 仿真程序涉及 
% 1. 创建感知器 
% 2. 训练创建的网络
% 3. 对训练好的感知器 进行仿真

% 例5-6 设计一个单层输出感知神经网络，进行二值化图像上的数字进行奇偶分类：

clear all
clc
pr=[0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1];
%设置输入向量每个元素的最大值和最小值
%%%%%%%%%%%%%%%创建感知器神经网络%%%%%%%%%%%%%%%%%%%%%%%%%
net=newp(pr,1);
%%%%%%%%%%%%%%%训练感知器神经网络%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%定义15*6的训练样本集输入向量%%%%%%%%%%%%%%%
P=[ 1	1	1	1	0	1	1	0	1	1	0	1	1	1	1
    0	1	0	0	1	0	0	1	1	0	1	0	1	1	1
    1	1	1	0	0	1	0	1	1	1	1	0	1	1	1
    1	1	1	1	1	1	0	1	0	0	0	1	1	1	0
    0	1	0	1	1	0	0	1	0	1	1	1	0	1	0
    1	1	1	0	1	0	1	1	1	0	0	1	1	1	1
   ]';


T=[1 1 0 0 1 0];          %定义目标向量
[net,tr]=train(net,P,T);  %训练单层感知器神经网络
iw1=net.iw{1,1}           %输出权值
b1=net.b{1}		          %输出阈值

epoch1=tr.epoch           %输出训练过程的每一步长
perf1=tr.perf             %输出每一步训练结果的误差
%%%%%%%%%%%%%%%%存储训练后的神经网络%%%%%%%%%%%%%%%%%%%%%%%%%%%
save net1 net

   