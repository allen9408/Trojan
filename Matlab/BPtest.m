clear;
clc;

%Read files
filedir = './power_result/'
filelist = dir(filedir)

P = zeros(1000, 45)
T = zeros(1, 4500)
PP = zeros(10,4500)
count = 0
num = 1
for i = 3:1:47
	filename = [filedir, filelist(i,1).name]
	data = load(filename)
    p(1:1000,num) = data(1:1000,1)
	num = num + 1
end
count = 0
for i = 1:1:4500
    col = fix(i/100) + 1
    if col > 45
        col = 45
    end
    for j = 1:1:10
        count = count +1
        PP(j,i) = p(count,col)
    end
    count = 0
end

T(1,1:890) = 1;
net = newff(minmax(PP),[7,1],{'tansig','purelin'});
net.trainParam.show = 50;
net.trainParam.lr = 0.05;
net.trainParam.epochs = 500;
net.trainParam.goal = 0.001;
[net,tr] = train(net,PP,T);

net.iw{1,1}
net.b{1}

net.lw{2,1}
net.b{2}

Y=sim(net,PP)
plot(PP,T,'+',PP,Y,'o') 