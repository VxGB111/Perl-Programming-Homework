#S Barclay
#BIFS617 assignment 1 question 4a
#Print DNA into lower case using string directives \U
print "S Barclay\n";
print "BIFS617 assignment 1 question 4a\n\n";
#storing DNA from user input
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
#Now to force it into lower case with the string directive \L
#print my results
print "DNA sequence displayed in all lower case below\n\n";
print "\L$DNA\n";
