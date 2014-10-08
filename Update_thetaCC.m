% Update_thetaCC

sumCC = 0 ;
for i=1:size(p,2)
	for j=1:size(q,2)
		sumCC = sumCC + (p(:,i)'*q(:,j) - AC_P_T(i,j))*(p(:,i)'*q(:,j) - AC_P_T(i,j)) ;
	end
end

thetaCC(1) = thetaCC(1) + alpha*(lambda*thetaCC(1) + mu*sumCC) ;
thetaCC(2) = thetaCC(2) + alpha*(lambda*thetaCC(2) + mu*sumCC) ;
thetaCC(3) = thetaCC(3) + alpha*(lambda*thetaCC(3) + mu*sumCC) ;