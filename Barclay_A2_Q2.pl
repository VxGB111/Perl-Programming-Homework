print "S Barclay\n";
print "BIFS617 Assignment 2:2\n\n";
#
#Task: take user input to get specific amino acid from array based on position.
#store array
@part2aa=("Trp","Arg","Leu","Ile","Asp");
#get user input
print "Enter amino acid position number between 1 and 5:\n";
$usernum=<STDIN>;
chomp $usernum;
#
#Use user's number to find amino acid at that position.
#i still think that it's pretty cool you can use the usernum and an operator to locate a position within the array
#which means I don't have to write 5 if statements
print "The amino acid at position $usernum is $part2aa[$usernum-1]\n";
#done
