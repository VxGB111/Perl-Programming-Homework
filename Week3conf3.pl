#S Barclay
#BIFS617 conference 3
#Prompt the user for 5 numbers
print "Please enter the 1st number"; 
$number1 = <STDIN>; 
chomp($number1);
print "Please enter the 2nd number"; 
$number2 = <STDIN>; 
chomp($number2);
print "Please enter the 3rd number"; 
$number3 = <STDIN>; 
chomp($number3);
print "Please enter the 4th number"; 
$number4 = <STDIN>; 
chomp($number4);
print "Please enter the 5th number"; 
$number5 = <STDIN>; 
chomp($number5);
#Calculate the average
$sum =($number1+$number2+$number3+$number4+$number5);
$avg = ($sum/5);
#Print out both the sum and average.
print "Sum = $sum\n";
print "Average = $avg\n";
