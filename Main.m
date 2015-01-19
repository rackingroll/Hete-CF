%Main program
% NainEntrance of this method

LoadData;
DataProcess;

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


