%initialise variables
bins = 45;
x_values = floor(logspace(4,6,11));
y_values = zeros(11,1);
divs = zeros(11,100);
loop_a = 0;
e = exp(1);
yvals = [0,0,0,0,0,0,0,0,0,0,0];

for u = 1:10
    divs = zeros(11,100);
    loop_a = 0;
	for w = 1:100
    	loop_a = 0;
		for n = x_values
	    	%Harrison's MH code
	    	markov_chain = zeros(n,1);
    
	    	f = @(x) exp(-5.*(x-0.5).^2).*cos(3.*pi.*x) + 1;
    
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
	yvals = yvals + y_values;
end

yvals = yvals/10;
e = exp(1);
avals = (100:1:2500);
xvals = [10000,15848,25118,39810,63095,100000,158489,251188,398107,630957,1000000];
y = zeros(16,1);
loop = 0;
squared_diffs = 0;
bestsd = 10000000;
besta = 0;


for a = avals
    loop = 0;
    squared_diffs = 0;
    for x = xvals
        loop = loop + 1;
        y(loop) = (e .^ (a/x)) - 1;
        for i = 1:11
            squared_diffs = squared_diffs + ((yvals(i) - y(i)) .^ 2);
        end
        if squared_diffs < bestsd
            bestsd = squared_diffs;
            besta = a;
        end
    end
end

besta
bestsd
