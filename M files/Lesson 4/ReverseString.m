% Write a function RevertString.m that accepts a string as its argument and returns a string that’s a
% reverted version of that string (string obtained by flipping the argument string i.e. making the last
% character of the argument string first in the output string, second to last character of the argument
% string should become the second character of the output string and so on, with your last character of
% the output string being the first character of the argument string). For example
% A=RevertString(‘Dragan’)
% should give you a string A that is equal to ‘nagarD” or
% B=RevertString(‘Hello’)
% should give you a string B that is equal to ‘olleH’.

function [r]= ReverseString(s)
r = fliplr(s);
end