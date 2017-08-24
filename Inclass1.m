% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a
% The first situation makes sense because you are simply adding 2 integers.
% The second is using ASCII values - the ASCII values are being added to
% produce 98. That is why it doesn't make sense.
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]
% Each of these statements is concatenating the variables we defined in the
% first section in different forms. x2 involves putting two integers in a
% single array. Since a is a character, a2 is concatenating two characters,
% which is why it doesn't come out looking like an array. x2b is just x2,
% but because a semicolon is used, the array is vertical as opposed to
% horizontal.

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

% The first == is comparing a to b to get a boolean value, which will be 0
% Then the second equal sets a equal to b
% Another == comparison then can produce a true value

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b

%The == operator in this case produces an element-wise comparison of the
%two arrays, and then all the values go into a new array of boolean values

%explain why this gives an error:

b = [2, 3];
a == b

%You can't do an element-wise comparison on arrays of unequal size.

%explain why this does not give an error
b = 2;
a == b 

%This does an element-wise comparison except every element is compared to
%2, the value of b. MATLAB allows this, so no error.
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]

% You are concatenating two arrays. However, before concatenating the
% second array, you are adding 10 to every value in it, so instead of
% 1,2,3... it is 11,12,13... 

% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
2:2:20
[oneToTen*2]
% 2. odd numbers from one to nineteen
1:2:20
[oneToTen*2-1]
% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)
fliplr(2:2:20)
fliplr([oneToTen*2])
% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)
flipud(oneToTen)

%Now there is a transverse of oneToTen, so fliplr does not work. It's
%flipping on the second dimension so the answer is pretty much the same. 

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2

%m1*m2 has done full matrix multiplication
%Adding the dot turned the result into element-wise multiplication

%explain this command:
m2./m1
% This has done element-wise division using m2 and m1, so every element in
% m2 was divided by the element in the same position in m1

%extra credit: explain why this command gives a warning:
m2/m1
%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)
%accesing value in 2nd row, 3rd column

rand_nums(2:4,3)
%accessing all elements rows 2-4 in column 3

rand_nums(1:2,3:4)
%getting a sub matrix with rows 1-2, column 3-4

rand_nums(:,2)
%getting all values in column 2

rand_nums(1,:)
%getting all values in row 1

rand_nums(:,[1 3 5])
%Getting all rows, but only columns 1, 3, and 5
