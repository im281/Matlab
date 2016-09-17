function  Fprogram()
first = 'Enter 1st number in series:   ';
x = input(first);
second = 'Enter 2nd number in series:  ';
y = input(second);
n = 'Enter n:  ';
z = input(n);
Fibonnaci(x,y,z);
end


function Fibonnaci(a,b,n)
v = [];
v = [v a];
v = [v b];
if(n == 2)
v = v(1) + v(2); 
elseif(n == 1)
v = v(1); 
else
for i = 1:n-2
    c = a + b;
    a = b;
    b = c;
    v = [v c];
    %if you wanted to print out c a different way
    %fprintf('%d ', c);
end
end
disp(v);
end


