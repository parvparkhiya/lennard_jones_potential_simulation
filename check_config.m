
%% check_config: returns 0 is config is not valid and return 1 if config is valid
function val = check_config(config,Sigma)
	val=1;
	for i=2:size(config,1)
		for j=1:(i-1)
			if(norm(config(j,:)-config(i,:))>(2.5*Sigma))
				val = 0;
				disp(strcat(num2str(i),{' '},'and',{' '},num2str(j),{' '},'are at greater distance then 2.5*sigma.'));
				% return;
			elseif (norm(config(j,:)-config(i,:))<(Sigma))
				val = 0;
				disp(strcat(num2str(i),{' '},'and',{' '},num2str(j),{' '},'are at shorter distance then sigma.'));
				% return;
			end
	end
end
