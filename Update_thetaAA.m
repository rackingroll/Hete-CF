% Update_thetaAA

sumAA = 0 ;
for i=1:size(p,2)
	for j=1:size(q,2)
		sumAA = sumAA + (p(:,i)'*q(:,j) - AC_P_T(i,j))*(p(:,i)'*q(:,j) - AC_P_T(i,j)) ;
	end
end

thetaAA(1) = thetaAA(1) + alpha*(lambda*thetaAA(1) + mu*sumAA) ;
thetaAA(2) = thetaAA(2) + alpha*(lambda*thetaAA(2) + mu*sumAA) ;
thetaAA(3) = thetaAA(3) + alpha*(lambda*thetaAA(3) + mu*sumAA) ;