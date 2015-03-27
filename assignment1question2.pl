#S Barclay
#BIFS617 assignment 1 question 2
#reverse transcribe RNA to DNA
print "S Barclay\n";
print "BIFS617 assignment 1 question 2\n\n";
#step1 storing RNA from user input
print "Please enter the RNA seqence\n";
#Use test sequence UuAaCcGg
print "for program test use sequence UuAaCcGg\n";
$RNA = <STDIN>;
chomp($RNA);
#give myself some space. I like space.
print "\n";
#display sequence for double checking
print "Original RNA sequence below\n";
print "$RNA\n";
#ok, so now I need to find the reverse compliment
#so first I reverse the strand's order
$revcom = reverse $RNA;
#then I substitute the proper nucleotides, A:T *instead of U, C:G, G:C, and U:A both in upper and lower case
#runs 5' to 3'
$revcom=~tr/ACGUacgtu/TGCAtgca/;
#print my results
print "reverse transcribed DNA sequence below. Runs 5' to 3'\n";
print "$revcom\n\n\n";
#for sequence comparison, reverse revcom so it runs 3' to 5'
$threetofive= reverse $revcom;
print "Below is RNA strand compared against its reverse compliment DNA strand\n";
print "$RNA runs 5'to 3'\n";
print "$threetofive runs 3' to 5'\n";
exit;