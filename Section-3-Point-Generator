close all;
%initialise variables
bins = 50;
x_values = floor(logspace(4,6,11));
y_values = zeros(11,1);
divs = zeros(11,100);
loop_a = 0;
e = exp(1);

for w = 1:100
    loop_a = 0;
	for n = x_values
	    %Harrison's MH code
	    markov_chain = zeros(n,1);
    
	    f = @(x) 0.5.*sin(2.*pi.*x)+1;
    
	    markov_chain(1) = rand;
    
	    for i = 1:(n-1)
			proposal = rand;
			acceptance_probability = f(proposal) / f(markov_chain(i));
			if rand < acceptance_probability
				markov_chain(i + 1) = proposal;
			else
				markov_chain(i + 1) = markov_chain(i);
			end
	    end
    
	    %KL Divergence
	    KLDiv = 0;
	    for j = 1:bins
	        lower = (j-1)/bins;
	        upper = j/bins;
	        count = sum(markov_chain >= lower & markov_chain <= upper);
	        p = f((2*j-1)/(2*bins));
	        q = ((count*bins)/(length(markov_chain)));
	        KLDiv = KLDiv + p .* log(p/q);
	    end
    
	    %Assign KL divergence to divs
	    loop_a = loop_a + 1;
	    divs(loop_a, w) = KLDiv;
	end
end

for t = 1:11
    y_values(t) = mean(divs(t,:));
end
y_values
