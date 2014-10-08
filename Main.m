%Main program
% NainEntrance of this method

k=5 ;
switch k
case 1 % our method
	d=4; % denote the dimension of the feature vector, there are four areas in the dataset, so we choose 4 as the feature dimension
	confCount = 18 ; % 18 conferences
	
	lambda=0.001; 
	mu = 0.01; % mu can be designed by some method
	alpha=0.0005;  
	
	p = rand(d,authorsCount) ;
	q = rand(d,confCount) ;
	
	thetaAC = rand(2,1) ;
	thetaAA = rand(3,1) ;
	thetaCC = rand(3,1) ;
	
	maximum=1000 ;
	for iterations=1:maximum
		pold = p ;
		qold = q ;
		disp('iterations: %s');disp(iterations);
		Update_p;
		Update_q;
		Update_thetaAC;
		Update_thetaAA;
		Update_thetaCC;
		
		sump = (p-pold)'*(p-pold) ;
		sump = sump - sump.*eye(size(sump)) ;
		sumq = (q-qold)'*(q-qold) ;
		sumq = sumq - sumq.*eye(size(sumq)) ;
		
		error = abs(sum(sum(sump)) + sum(sum(sumq))) 
		if iterations> 500
			alpha =0.00005 ;
		end
		
		if error< 0.005
			break;
		end
	end
	disp ('success!') ;
	
	MAE(p'*q,AC_A_T) 
	RMSE(p'*q,AC_A_T) 
case 2 % User Mean
	MAE(AC_A_T,AC_P_T) 
	RMSE(AC_A_T,AC_P_T) 
case 3 % User Mean
	result = Normalization(AC_P_T') ;
	MAE(AC_A_T,result') 
	RMSE(AC_A_T,result') 
case 4 % NNMF
	disp('d=5') ;
	[p,q] = nnmf(AC_P_T,5) ;
	MAE(AC_A_T,p*q) 
	RMSE(AC_A_T,p*q) 

	disp('d=10') ;
	[p,q] = nnmf(AC_P_T,10) ;
	MAE(AC_A_T,p*q) 
	RMSE(AC_A_T,p*q) 
case 5 % Het_Rec
	d=10; % denote the dimension of the feature vector, there are four areas in the dataset, so we choose 4 as the feature dimension
	confCount = 18 ; % 18 conferences
	
	lambda=0.001; 
	mu = 0.01; % mu can be designed by some method
	alpha=0.0005;  
	
	p = rand(d,authorsCount) ;
	q = rand(d,confCount) ;
	
	thetaAC = rand(2,1) ;
	thetaAA = rand(3,1) ;
	thetaCC = rand(3,1) ;
	
	maximum=1000 ;
    
	for iterations=1:maximum
		pold = p ;
		qold = q ;
		%disp('iterations: %s');disp(iterations);
		Update_p;
		Update_q;
		Update_thetaCC;
		
		sump = (p-pold)'*(p-pold) ;
		sump = sump - sump.*eye(size(sump)) ;
		sumq = (q-qold)'*(q-qold) ;
		sumq = sumq - sumq.*eye(size(sumq)) ;
		
		error = abs(sum(sum(sump)) + sum(sum(sumq))) ;
        disp(error);
		if iterations> 20
			alpha =0.000005 ;
		end
		
		if iterations> 100 %error< 0.005
			break;
		end
	end
	disp ('success!') ;
	
	MAE(p'*q,AC_A_T) 
	RMSE(p'*q,AC_A_T) 
case 6 % Trust_MF
	d=4; % denote the dimension of the feature vector, there are four areas in the dataset, so we choose 4 as the feature dimension
	confCount = 18 ; % 18 conferences
	
	lambda=0.001; 
	mu = 0.01; % mu can be designed by some method
	alpha=0.0005;  
	
	p = rand(d,authorsCount) ;
	q = rand(d,confCount) ;
	
	thetaAC = rand(2,1) ;
	thetaAA = rand(3,1) ;
	thetaCC = rand(3,1) ;
	
	maximum=1000 ;
	for iterations=1:maximum
		pold = p ;
		qold = q ;
		disp('iterations: %s');disp(iterations);
		Update_p;
		Update_q;
		Update_thetaAA;
		
		sump = (p-pold)'*(p-pold) ;
		sump = sump - sump.*eye(size(sump)) ;
		sumq = (q-qold)'*(q-qold) ;
		sumq = sumq - sumq.*eye(size(sumq)) ;
		
		error = abs(sum(sum(sump)) + sum(sum(sumq))) 
		if iterations> 500
			alpha =0.00005 ;
		end
		
		if error< 0.005
			break;
		end
	end
	disp ('success!') ;
	
	MAE(p'*q,AC_A_T) 
	RMSE(p'*q,AC_A_T) 
otherwise
	fdsfds=2 ;
end


