close all
xvals = [20,25,30,35,40,45,50];
yvals = [336,506,727,971,1251,1580,1925];
hold on
axis([20,50,0,2000]);
grid on
fontsize(scale=2.5);
scatter(xvals, yvals, "filled", 'MarkerEdgeColor', [0 .5 .5], 'MarkerFaceColor',[0 .7 .7], 'LineWidth', 1.5)
x = (15:0.1:50);
y = 0.76 .* x.^2 + 36;
plot(x,y,'r--')
title('Affect of Number of Bins on Approximation Function')
xlabel('Number of Bins') 
ylabel('Best Value a for Approximation $e^{\frac{a}{x}}-1$', "Interpreter", "latex") 
legend("Data Points from Experiment","$0.76x^2+36$", "Interpreter","latex","Location","northwest");
