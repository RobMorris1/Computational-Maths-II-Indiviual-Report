close all
xvals = [10000,15848,25118,39810,63095,100000,158489,251188,398107,630957,1000000,1584893,2511886,3981071,6309573,10000000];
yvals = [0.2024,0.1336,0.0821,0.0534,0.0325,0.0212,0.0132,0.0081,0.0052,0.0034,0.0022,0.0014,0.0009,0.0006,0.0004,0.0003];

hold on
xscale log

axis([10000,10000000,0,0.3]);

grid on
fontsize(scale=2.5);
scatter(xvals, yvals, "filled", 'MarkerEdgeColor', [0 .5 .5], 'MarkerFaceColor',[0 .7 .7], 'LineWidth', 1.5)
x = (10000:1:10000000);
y = 4.37.*13.8.^(-(1./54000).*(x+54500));
plot(x,y,'r--')
title('KL Divergence of Metropolis-Hastings')
xlabel('Number of Samples') 
ylabel('Divergence') 
legend("KL Divergence","line of best fit");
