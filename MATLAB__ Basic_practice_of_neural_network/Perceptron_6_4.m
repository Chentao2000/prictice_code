%% 设计一个单输入 （）输入范围 为 【-2 2 】
% 单个神经元的线性网络 ，输入 延迟为 0 和 1 ，学习率为0.05 
% 输入向量P 和目标向量 T 分别是 
P1 = [0 -2 1 2 0 -1 1 2 0 1]
T1 = [1 -1 0 2 1  0 0 1 2 1]

% 根据输入和目标向量对网络进行训练和仿真

net = newlin([-2 2],1,[0 1],0.05)
P1 = [0 -2 1 2 0 -1 1 2 0 1];
Y = sim(net,P1)
%仿真结果如下 
T1 = [1 -1 0 2 1 0 0 1 2 1 ];
[net,Y,E,Pf]=adapt(net,P1,T1);
Y