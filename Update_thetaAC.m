% Update_thetaAC

sumAC = 0 ;
for i=1:size(p,2)
	for j=1:size(q,2)
		sumAC = sumAC + (p(:,i)'*q(:,j) - AC_P_T(i,j))*(p(:,i)'*q(:,j) - AC_P_T(i,j)) ;
	end
end

thetaAC(1) = thetaAC(1) + alpha*(lambda*thetaAC(1) + mu*sumAC) ;
thetaAC(2) = thetaAC(2) + alpha*(lambda*thetaAC(2) + mu*sumAC) ;