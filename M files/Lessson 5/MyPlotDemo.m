function [v] = MyPlotDemo(first,last,increment,der)
start = first
v = [];
while first < last
    if(der == 0)
    y = TestFunction(first);
    elseif(der == 1)
    y = Derivative(first);
    end
    v = [v y];
    first = first + increment;      
end
x = [start:increment:last];
plot(x,v)
end

function [y] = TestFunction(x)
y = x^2*cos(2*x) - exp(x) + x - 1.5;
end

function [y] = Derivative(x)
y = -1*x^2*sin(2*x) + cos(2*x)*(2*x) - exp(x) + 1;
end