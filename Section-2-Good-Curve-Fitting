e = exp(1);
avals = (1500:1:2500);
xvals = [10000,15848,25118,39810,63095,100000,158489,251188,398107,630957,1000000,1584893,2511886,3981071,6309573,10000000];
yvals = [0.2024,0.1336,0.0821,0.0534,0.0325,0.0212,0.0132,0.0081,0.0052,0.0034,0.0022,0.0014,0.0009,0.0006,0.0004,0.0003];
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
        for i = 1:16
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
