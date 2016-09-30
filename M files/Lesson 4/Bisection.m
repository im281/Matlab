% For the function f(x) = x^3 ? 4.9x^2 + 6.96x ? 3.024, find one root in the interval [0,1] (i.e.
% x1 = 0, x2 = 1) using the bisection method.
% (a) Please, manually perform 4 iterations of this method and tabulate all relevant results;
% (b) Write a program (or function) that will perform the bisection method for this problem,
% starting with the interval [0.1]. Terminate your calculations when you are certain that the
% error between your approximation and actual solution to the equation ? ? = 0 is less than
% 0.05. Explain why and how you decided to stop further iterations of bisecting the interval.
% Please enclose your answers in a neat, easy to understand tabulated form (feel free to
% copy/paste numbers from Matlab into excel or word to make a nice report)
% 
% 
% Initialization: The bisection method is initialized by specifying the function f(x), the interval [a,b], and the tolerance  > 0.
% 
% We also check whether f(a) = 0 or f(b) = 0, and if so return the value of a or b and exit.
% 
% Loop: Let m = (a + b)/2 be the midpoint of the interval [a,b]. Compute the signs of f(a), f(m), and f(b).
% 
% If any are zero, return the corresponding point and exit.
% 
% Assuming none are zero, if f(a) and f(m) have opposite sides, replace b by m, else replace a by m.
% 
% If the length of the [a,b] is less than , return the value of a and exit.


function [mp] = Bisection(e)
%f = x^3 - 4.9*x^2 + 6.96*x - 3.024;
%Initialize variables
err = 1;
ga = 0;
gb = 1;
mp = (gb + ga)/2;
fa = MyFunction(ga);
fb = MyFunction(gb);
fc = MyFunction(mp);
%End initialization
%Iterate until error is < some desired value
while (err > e)
    if((fa*fc) >=0)
        ga = mp;   
    end
    if((fb*fc) >= 0)
        gb = mp;
    end
    mp = (ga + gb)/2;
    
    fa = MyFunction(ga);
    fb = MyFunction(gb);
    fc = MyFunction(mp);
    err = abs(gb-ga);        
end
mp;
end

function [o] = MyFunction(x)
o = x^3 - 4.9*x^2 + 6.96*x - 3.024;
end


function [mp] = Bisection1(i)
%f = x^3 - 4.9*x^2 + 6.96*x - 3.024;
%Initialize variables
ga = 0;
gb = 1;
mp = (gb + ga)/2;
fa = MyFunction(ga);
fb = MyFunction(gb);
fc = MyFunction(mp);
%End initialization
%Iterate until error is < some desired value
for j = 1:i
    if((fa*fc) >=0)
        ga = mp;   
    end
    if((fb*fc) >= 0)
        gb = mp;
    end
    mp = (ga + gb)/2;
    
    fa = MyFunction(ga);
    fb = MyFunction(gb);
    fc = MyFunction(mp);
    error = abs(gb-ga);
    
mp;      
end
end


