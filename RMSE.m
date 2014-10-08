function [m] = RMSE (R_test,R_train)
	m = sqrt(sum(sum((R_test - R_train).*(R_test - R_train)))/(size(R_test,1)*size(R_test,2))) ;
end