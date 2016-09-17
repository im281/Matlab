function Fibonnaci(a,b,n)
v = [];
for i = 1:n
    c = a + b;
    a = b;
    b = c;
    v = [v c];
    %fprintf('%d ', c);
end
disp(v);
end

