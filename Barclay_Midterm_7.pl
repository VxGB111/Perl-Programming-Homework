print "S. Barclay\n";
print "BIFS617 Midterm Question 7\n";
print "Task: get list of sequence lengths from user and do the following:\n";
print "\t a. split string into an array\n";
print "\t b. use foreach loop to get sum of sequences\n";
print "\t c. print the average\n\n";
#
#get sequence lengths from user
print "Enter sequence lengths separated by a space:\n";
$user=<STDIN>;
chomp $lengths;
#use white spaces to define array elements
#have to put a space so that perl knows where to split
@lengths=split(/ /,$user);
#print array for my own reference :)
print "Array of sequence lengths: @lengths\n";
#initialize sum
$sum=0;
#get total number of elements in array I suppose I could have said $t=@lengths, but using different commands is good for me
$t= scalar @lengths;
#use foreach loop to add each element value to the sum
foreach $lengths (@lengths){$sum+=$lengths;}
#print the sum and total 
print "Sum equals $sum\n";
print "total number of variables in array: $t\n";
#find the average using basic math
$avg=$sum/$t;
#and print it
print "the average sequence lenght is: $avg\n";