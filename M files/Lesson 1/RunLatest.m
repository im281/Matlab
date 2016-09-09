function RunLatest()
prompt = 'Please tell me how old you are? ';
x = input(prompt);
   disp(['You just told me that you were ', num2str(x), ' years old'])
if (x < 0)
       disp('Thats Impossible') 
   else if (x > 105)
        disp ('Thats highly impossible') 
       end
end


