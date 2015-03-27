print "S. Barclay\n";
print "BIFS617 Midterm Question 8\n";
print "Program Convert\n";
print "Convert Farenheit to Celcius\n";
#
#this one was super easy after doing the other ones :)
#
#Get Farenheit from user
print "Enter temperature in Fahrenheit:\n";
$F=<STDIN>;
chomp $F;
#convert to Celcius using basic math proceedures
$C=($F-32)/1.8;
#print the answer
print "Celcius temperature equivalent: $C\n";