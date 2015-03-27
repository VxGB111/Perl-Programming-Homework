print "S Barclay\n";
print "BIFS617 Midterm question 4\n";
print "Task: determine if two user input sequences are reverse compliments of each other.\n\n";
#
#Get first sequence from user
print "Enter first DNA sequence:\n";
$DNA1 = <STDIN>;
chomp($DNA1);
#Get second Sequence
print "Enter second DNA sequence:\n";
$DNA2 = <STDIN>;
chomp($DNA2);
#
#make sure they're in upper case to keep case sensitivity from giving a false negative
$UCDNA1="\U$DNA1";
$UCDNA2="\U$DNA2";
#
#so I reverse the first strand's order
$revdna1 = reverse $UCDNA1;
print "Reverse order of first DNA sequence: $revdna1\n";
#
#print out sequences for reference (although this is only practical if they're small sequences)
print "for comparison:\n";
print "DNA sequence 1: $revdna1\n";
print "DNA sequence 2: $UCDNA2\n";
#so now to see if they are equals
if ($revdna1 eq $UCDNA2) {print "The strands are reverse compliments of one another\n";}
    else {print "The strands are not reverse compliments\n";}
    