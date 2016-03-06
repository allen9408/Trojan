% K-means algorithm
% Author: Allen Ni
% Create data: 2016-3-6 16:29 
% Reference: http://baike.baidu.com/link?url=2z_vFp5Y1NMZcAeiffnxBzp5-Cm3w9Mk0w184AkuWMl39a0_5se-V1YIrYyf09sXeEmQjEMGCgWAbxuB36wGhK

function [CID, NUM, CENTERS] = Kmeans(X, k, NC)
	[n, d] = size(X);

	% If no NC, randomly choose cluster centers from the observations
	if (nargin < 3)
		ind = ceil(n * rand(1, k));
		% Add noise with a normal distribution
		NC = X(ind, : ) + randn(k,d);
	end

	% Set up storage
	CID = zeros(1,n);
	oldCID = ones(1,n);
	NUM = zeros(1,k);

	% Set up max times of iterations
	mIter = 100;
	iter = 1;

	% Implement the kmeans algorithm
	while((~isequal(CID,oldCID)) & iter < mIter)
		for i = 1:n
			dis = sum((repmat(X(i, : ), k, 1) - NC).^2, 2);
			[m, ind] = min(dis);
			CID(i) = ind;
		end

		% Find the new cluster centers
		for i = 1:k
			ind = find(CID == i);
			% Find the centroid
			NC(i, : ) = mean(X(ind, : ));
			% Find number in each cluster
			NUM(i) = length(ind);
		end

		iter = iter + 1;
	end

	% Check each observation if the error can be minimized some more
	% Loop through all points
	mIter = 2;
	iter = 1;
	move = 1;
	while((iter < mIter) & move ~= 0)
		move = 0;
		for i = 1:n
			dis = sum((repmat(X(i, : ), k, 1) - NC).^2, 2);
			r = CID(i);
			dadj = NUM ./ (NUM + 1) .* dis';
			[m, ind] = min(dadj);

			if (ind ~= r)
				CID(i) = ind;
				ic = find(CID == ind);
				NC(ind) = mean(X(ic, : ));
				move = 1;
			end
		end

		iter = iter + 1;
	end

	CENTERS = NC;

	if (move == 0)
		disp('No point were moved after the initial clustering procedure.');
	else
		disp('Some points were moved after the initial clustering procedure.')
	end
end