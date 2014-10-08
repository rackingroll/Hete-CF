% Update_p
tempp = p ;
 for i=1:size(p,2)
 
	% calculate the sum of first term
	sump = 0;
	for j=1:size(q,2)
		sump = sump + p(:,i)'*q(:,j)-AC_P_T(i,j) ;
	end
	
	% calculate the sum of the second term
	sumAC = 0;
	sumTemp1 = 0;
	for j=1:size(q,2)
		sumTemp1 = sumTemp1 + p(:,i)'*q(:,j)-AC_1(i,j) ;
	end
	sumTemp2 = 0;
	for j=1:size(q,2)
		sumTemp2 = sumTemp2 + p(:,i)'*q(:,j)-AC_2(i,j) ;
	end
	sumAC = sumTemp1*thetaAC(1) + sumTemp2*thetaAC(2) ;
	
	
	% add all
	tempp(:,i) = sump*p(:,i) + lambda*p(:,i) + mu*sumAC*p(:,i);
 end
 
 	% calculate the sum of the third term
	sumAA = thetaAA(1)*AA_L_1 + thetaAA(2)*AA_L_2 + thetaAA(3)*AA_L_3;
	tempp = p + p*sumAA ; 
	
	p = p - alpha*tempp ;