e = exp(1);
avals = (100:1:2500);
xvals = [10000,15848,25118,39810,63095,100000,158489,251188,398107,630957,1000000];
yvals = [0.2085 %these values come from varying the number of bins in Section-3-Point-Generator
    0.1273
    0.0834
    0.0523
    0.0324
    0.0211
    0.0130
    0.0083
    0.0053
    0.0032
    0.0022];
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
