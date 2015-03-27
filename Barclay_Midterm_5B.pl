print "S. Barclay\n";
print "BIFS617 Midterm Question 5B\n";
print "Task: Modify 5A to tellhow many lines have been entered and only prints lines 2,3,4.\n";
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
#to get number of lines in the array, I can convert to a scalar
$lines=@user;
#print the number of lines
print "Number of lines of text entered (excluding quit): $lines\n";
#element 1 is second line entered because array numbering starts at 0, etc
print "line 2: $user[1]\n";
print "line 3: $user[2]\n";
print "line 4: $user[3]\n";