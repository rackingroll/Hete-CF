function [PS] = Normalization (P)

countX = size(P,1) ;
countY = size(P,2) ;

PS = zeros(countX,countY) ;

for i = 1:countX
	if sum(P(i,:)) ~= 0
		for j = 1:countY
			PS(i,j) =( P(i,j) / sum(P(i,:)) );
		end
	end
end
