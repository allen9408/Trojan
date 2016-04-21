clear;
clc;

data = load('T600.log')
P = zeros(6,100)
T = zeros(1,100)
count = 0;

for i = 1:1:100
	for j = 1:1:6
		count = count + 1
		P(j,i) = data(count,1)
	end
end

T(1,1:6) = 1;
T(1,7:100) = -1;

net = newff(minmax(P),[5,1],{'tansig','purelin'});
net.trainParam.show = 50;
net.trainParam.lr = 0.05;
net.trainParam.epochs = 300;
net.trainParam.goal = 0.001;
[net,tr] = train(net,P,T);

net.iw{1,1}
net.b{1}

net.lw{2,1}
net.b{2}

sim(net,P)
