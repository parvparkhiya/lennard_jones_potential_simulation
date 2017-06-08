%% energy_config: function description
function energy = energy_config(config,Sigma,Ep)
	energy=0;

	for i=2:size(config,1)
		for j=1:(i-1)
			d=norm(config(i,:)-config(j,:));
			energy=energy+4*Ep*((Sigma/d)^(12)-(Sigma/d)^(6));
		end
	end

end