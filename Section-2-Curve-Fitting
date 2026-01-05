avals = (4.3:0.01:4.5);
bvals = (13.8:0.01:14.0);
cvals = (54000:1:54400);
dvals = (54500:1:55000);
xvals = [10000,15848,25118,39810,63095,100000,158489,251188,398107,630957,1000000,1584893,2511886,3981071,6309573,10000000];
yvals = [0.2024,0.1336,0.0821,0.0534,0.0325,0.0212,0.0132,0.0081,0.0052,0.0034,0.0022,0.0014,0.0009,0.0006,0.0004,0.0003];
y = zeros(16,1);
loop = 0;
squared_diffs = 0;
bestsd = 10000000;
besta = 0;
bestb = 0;
bestc = 0;
bestd = 0;



for a = avals
    for b = bvals
        for c = cvals
            for d = dvals
                loop = 0;
                squared_diffs = 0;
                for x = xvals
                    loop = loop + 1;
                    y(loop) = a * (b .^ (-(1/c)*(x+d)));
                    for i = 1:16
                        squared_diffs = squared_diffs + ((yvals(i) - y(i)) .^ 2);
                    end
                    if squared_diffs < bestsd
                        bestsd = squared_diffs;
                        besta = a;
                        bestb = b;
                        bestc = c;
                        bestd = d;
                    end
                end
            end
        end
    end
end

besta
bestb
bestc
bestd
bestsd
