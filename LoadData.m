		clear all ;
		
		[AP_P,CP_P,PP_P,TP_P,AL_P,PL_P] = DataExtractionPre () ;
		AC_P = AP_P*CP_P' ;
		
		[AP_A,CP_A,PP_A,TP_A,AL_A,PL_A] = DataExtractionAft () ;
		AC_A = AP_A*CP_A' ;
		
		% calculate the common authors
		authorsCount = 0;
		for i=1:size(AL_P,1)
			for j=(i+1):size(AL_A,1)
				if (AL_P(i,2)~=0 && AL_A(j,2)~=0 && AL_P(i,2) == AL_A(j,2))
					authorsCount = authorsCount + 1 ;
				end
			end
		end
		
%		authors = zeros(authorsCount,1) ;
%		authorListPre = zeros(authorsCount,1) ;
%		authorListAft = zeros(authorsCount,1) ;
		authorPaperPre = zeros(authorsCount,size(AP_P,2)) ;
		authorPaperAft = zeros(authorsCount,size(AP_A,2)) ;
				
		count = 0 ;
		for i=1:size(AL_P,1)
			for j=(i+1):size(AL_A,1)
				if AL_P(i,2) == AL_A(j,2)
					count = count + 1 ;
%					authors(count,1) = AL_A(j,2) ;
%					authorListPre(count,1) = AL_P(j,1) ;
%					authorListAft(count,1) = AL_A(j,1) ;
					% recalculate AP
					authorPaperPre(count,:) = AP_P(AL_P(j,1),:) ;
					authorPaperAft(count,:) = AP_A(AL_A(j,1),:) ;
					
				end
			end
		end