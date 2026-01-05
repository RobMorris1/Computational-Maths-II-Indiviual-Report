avals = (0.5:0.01:1);
bvals = (0:1:100);
xvals = [20,25,30,35,40,45,50];
yvals = [336,506,727,971,1251,1580,1925];
y = zeros(16,1);
loop = 0;
squared_diffs = 0;
bestsd = 10000000;
besta = 0;
bestb = 0;


for a = avals
    for b = bvals
        loop = 0;
        squared_diffs = 0;
        for x = xvals
            loop = loop + 1;
            y(loop) = a.*x.^2 + b;
            for i = 1:7
                squared_diffs = squared_diffs + ((yvals(i) - y(i)) .^ 2);
            end
            if squared_diffs < bestsd
                bestsd = squared_diffs;
                besta = a;
                bestb = b;
            end
        end
    end
end

besta
bestb
bestsd
