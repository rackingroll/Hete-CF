function [m] = MAE (R_test,R_train)
	m = sum(sum(abs(R_test - R_train)))/(size(R_test,1)*size(R_test,2)) ;
end