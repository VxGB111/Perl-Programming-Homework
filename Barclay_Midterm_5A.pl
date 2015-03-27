print "S. Barclay\n";
print "BIFS617 Midterm Question 5A\n";
print "Task: write a program that takes user entered lines and\n";
print "stores into an array until the user enters 'quit' then prints\n";
print "in ASCII format\n\n";
#
#initialize empty array
@user=();
#get info from user in the proper format
print "Enter each line followed by the return key. When you are finished, enter 'quit'.\n";
#use do until loop to repeat adding to the array until quit is entered
do {$user=<STDIN>;
    chomp $user;
    push(@user, $user);}
    until ($user eq 'quit');
#now to remove quit from the array, use 'pop' which removes last element
pop @user;
#now that quit is gone, I can sort the array in the proper format and print
@user= sort @user;
print "User array: @user\n";


