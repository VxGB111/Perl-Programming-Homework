print "S. Barclay.\n";
print "BIFS 617 Week 7 Conference 1\n";
print "Task: ask random question in subroutine and have it print from the main program\n\n";
#
#Ok, so I need to 'call' my subroutine from my program to get the user's opinion
#a scalar to hold the value returned by the subroutine and which subroutine to access
$sexymen= sexiness($onesexyman);
#
#print the returned statement
print "\nWRONG!. $sexymen is not the sexiest man alive. The correct answer was \"Snuggles\"\n\n";
#
#so the subroutine does not need to be "inline"
#subroutine to prompt user, chomp it, and return the information.
#my statement limits $onesexyman to the subroutine
sub sexiness {my($onesexyman); print "who is the sexiest man alive?\n"; $onesexyman=<STDIN>; chomp $onesexyman; return $onesexyman;}
#