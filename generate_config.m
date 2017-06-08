function config = generate_config(N,Sigma)
	

	%first particle is assumed to be at origin
	
	config=zeros(N,3);

	count=2;

	while (count<=N)
		
		ttemp=(rand(1,3)-0.5)*2;
		ttemp=ttemp/norm(ttemp);
		ttemp=ttemp*(2.5/2)*Sigma;
	    

	    flag=0;
		for z=1:(count-1)
			if (norm(config(z,:)-ttemp)<Sigma)
				flag=1;
	            break;
			end
	    end
	    
	    if(flag==0)
			config(count,:)=ttemp;
			count=count+1;
	    end
	end


end