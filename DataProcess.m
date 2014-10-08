	% target Relation
	AC_P_T = Normalization(authorPaperPre*CP_P') ;
	AC_A_T = Normalization(authorPaperAft*CP_A') ;
	
	% Normalization
	% Meta Path A_C : 1. APPC, 2. APTPC
	AC_1 = Normalization(authorPaperPre*PP_P*CP_P');
	AC_2 = Normalization(authorPaperPre*TP_P'*TP_P*CP_P');
	
	% Meta Path A_A : 1. APA, 2. APCPA, 3. APTPA
	AA_1 = PathSim(authorPaperPre*authorPaperPre') ;
	AA_2 = PathSim(authorPaperPre*CP_P'*CP_P*authorPaperPre') ;
	AA_3 = PathSim(authorPaperPre*TP_P'*TP_P*authorPaperPre') ;
	
	AA_L_1 = diag(sum(AA_1)) - AA_1 ;
	AA_L_2 = diag(sum(AA_2)) - AA_2 ;
	AA_L_3 = diag(sum(AA_3)) - AA_3 ;
	
	% Meta Path C_C : 1. CPPC, 2. CPAPC, 3. CPTPC
	CC_1 = PathSim(CP_P*CP_P') ;
	CC_2 = PathSim(CP_P*authorPaperPre'*authorPaperPre*CP_P') ;
	CC_3 = PathSim(CP_P*TP_P'*TP_P*CP_P') ;

	CC_L_1 = diag(sum(CC_1)) - CC_1 ;
	CC_L_2 = diag(sum(CC_2)) - CC_2 ;
	CC_L_3 = diag(sum(CC_3)) - CC_3 ;
	
	% clear
	clear AP_P; clear CP_P; clear PP_P; clear TP_P; clear AL_P; clear PL_P ;
	clear AP_A; clear CP_A; clear PP_A; clear TP_A; clear AL_A; clear PL_A ;
	clear authorPaperPre; clear authorPaperAft;
	clear count; clear i; clear j;