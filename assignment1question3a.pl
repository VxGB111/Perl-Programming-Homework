#S Barclay
#BIFS617 assignment 1 question 3a
#Print DNA into lowercase from upper or lower case input
print "S Barclay\n";
print "BIFS617 assignment 1 question 3a\n\n";
#storing DNA from user input
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
#Now to force it into lower case with the tr/// function
#make sure not to pair, it's just a straight replacement of upper to lower
$DNA=~tr/ACGT/acgt/;
#print my results
print "DNA sequence displayed in all lower case below\n\n";
print "$DNA\n";
