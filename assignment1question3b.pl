#S Barclay
#BIFS617 assignment 1 question 3b
#Print DNA into uppercase from upper or lower case input
print "S Barclay\n";
print "BIFS617 assignment 1 question 3b\n\n";
#step1 storing DNA from user input
print "Please enter the DNA seqence\n";
#Use test sequence TtAaCcGg
print "for program test use sequence TtAaCcGg\n";
$DNA = <STDIN>;
chomp($DNA);
#spacer
print "\n";
#display sequence for double checking
print "Original DNA sequence below\n";
print "$DNA\n\n";
#Now to force it into upper case with the tr/// function
#make sure not to pair, it's just a straight replacement of lower to upper
$DNA=~tr/actg/ACTG/;
#print my results
print "DNA sequence displayed in all upper case below\n\n";
print "$DNA\n";
