print "S Barclay\n";
print "BIFS617 Week 5 Conference 1\n";
print "Task: Using conditional statements and assignment\n";
print "operators to determine if a number is even or odd\n\n";
#Even numbers have no remainder when divided by 2 whereas an odd number does.
#I can use assignment operator %= to evaluate the remainder 
#Assignment operators 318 of Tisdall
#
#So first I need to get my number from the user
print "Enter number: ";
$number = <STDIN>;
chomp $number;
#
#next using the operator for remainder
if ($number % 2 == 0) {print "Your number is even. Yep, I checked and it's definitely even!\n";} else {print "Your number is odd. Don't you just love odd numbers?\n";}
#and I'm spent
