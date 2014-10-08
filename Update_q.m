% Update_q
tempq = q ;
 for i=1:size(q,2)
 
	% calculate the sum of first term
	sumq = 0;
	for j=1:size(q,2)
		sumq = sumq + q(:,i)'*p(:,j)-AC_P_T(j,i) ;
	end
	
	% calculate the sum of the second term
	sumAC = 0;
	sumTemp1 = 0;
	for j=1:size(p,2)
		sumTemp1 = sumTemp1 + q(:,i)'*p(:,j)-AC_1(j,i) ;
	end
	sumTemp2 = 0;
	for j=1:size(p,2)
		sumTemp2 = sumTemp2 + q(:,i)'*p(:,j)-AC_2(j,i) ;
	end
	sumAC = sumTemp1*thetaAC(1) + sumTemp2*thetaAC(2) ;
	
	
	% add all
	tempq(:,i) = sumq*q(:,i) + lambda*q(:,i) + mu*sumAC*q(:,i);
 end
 
 	% calculate the sum of the third term
	sumCC = thetaCC(1)*CC_L_1' + thetaCC(2)*CC_L_2' + thetaCC(3)*CC_L_3';
	tempq = q + q*sumCC ;
	
	q = q - alpha*tempq ;