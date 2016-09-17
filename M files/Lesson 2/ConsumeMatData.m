function ConsumeMatData(file)
b = load(file);
fields = fieldnames(b);
r = 0;
for index = 1:numel(fields)
   currentfield = fields{index};
   d = getfield(b,currentfield);
   r = r + d; 
end
ave = r/numel(fields);
sum = r;
disp(['The sum is: ', num2str(sum), ' and the average is: ' num2str(ave)]);
end

%file = 'C:\Users\Owner\Source\Repos\Matlab\M files\Lesson 2\hw2data.mat'

%loading .mat file
%b = load('C:\Users\Owner\Source\Repos\Matlab\M files\Lesson 2\hw2data.mat');

%struct example
%A = struct('a1',[1 2 3],'a2',[4 5 6]);

%access values
%A.a1
%A.a2

%example of string concatenation
%s1 = 'Good';
%s2 = 'morning';
%s = strcat(s1,s2)


