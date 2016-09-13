% Create some variables
x = rand(3);
y = magic(3);
z = eye(3);
% Save the variable x,y,z into one *.mat file
% inside the ' ' is the file path and  x y z are the variables saved
save 'C:\Users\Owner\Documents\MATLAB\bathymetry.mat' x y z
% Clear them out of the workspace
clear x y z
% Load them again
load 'C:\Users\Owner\Documents\MATLAB\bathymetry.mat'