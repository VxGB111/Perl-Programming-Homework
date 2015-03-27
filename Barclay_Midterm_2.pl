print "S Barclay\n";
print "BIFS617 Midterm Question 2\n";
print "Task: Use 4 different loop structures to list all even numbers from 0 to 20\n\n";
#Even numbers have no remainder when divided by 2 whereas an odd number does.
#I can use assignment operator %= to evaluate the remainder 
#Assignment operators 318 of Tisdall
#
print "While loop\n";
print "Even numbers 0-20\n";
#so I need an initial scalar variable to begin my count
$number=0;
#to find all even numbers using "while" and print
while ($number<21) {if($number % 2 == 0) {print "$number\n"}; ++$number;}
#
print "\nUntil Loop\n";
print "Even numbers 0-20\n";
#reinitialize my count
$number=0;
#to find all even numbers using "until" and print
until ($number==21) {if($number % 2 == 0) {print "$number\n"}; ++$number;}
#
print "\nDo-Until Loop\n";
print "Even numbers 0-20\n";
#reinitialize my count
$number=0;
#to find all even numbers using "do-until" and print
do {if($number % 2 == 0) {print "$number\n"}; ++$number;} until ($number==21);
#
print "\nFor Loop\n";
print "Even numbers 0-20\n";
#no need to reinitialize the count here.
#find all numbers using "for" loop and print
for($number=21; $number>=0; $number--) {if($number % 2 == 0) {print "$number\n"};}
#making note here of the semicolons used in the for loop structure
#Used commas at first and it wouldn't work
#remember for next time!
