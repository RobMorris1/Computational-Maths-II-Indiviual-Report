close all
xvals = (15:5:50);
yvals = [155,270,413,599,824,1066,1351,1673];
hold on
grid on
fontsize(scale=2.5);
scatter(xvals, yvals, "filled", 'MarkerEdgeColor', [0 .5 .5], 'MarkerFaceColor',[0 .7 .7], 'LineWidth', 1.5)
x = (15:0.1:50);
y = 2./3 .* x.^2;
plot(x,y,'r--')
title('Affect of Number of Bins on Approximation Function')
xlabel('Number of Bins') 
ylabel('Best Value a for Approximation $e^{\frac{a}{x}}-1$', "Interpreter", "latex") 
legend("Data Points from Experiment","$\frac{2}{3}x^2$", "Interpreter","latex","Location","northwest");
