print "S. Barclay.\n";
print "BIFS 617 Week 7 Conference 2\n";
print "Task: prompt user for valied filename, allow 5 attempts.\n";
#
#
#
#Call subroutine
filestuff ();
#
#so I know the program came back from subroutine
print "returned from subroutine\n";
#
#subroutine
#mystuff restricts values to subroutine
#initializing userfile to no value because you can't do my($userfile)=<STDIN>. just doesn't work
#note: this makes the userfile invisible to the rest of the program so you won't be able to use it
#unless you change it from my($userfile) to just $userfile
sub filestuff {my($userfile)=""; my($number)=4;
#for loop to check out the existence of the file 
               for($number=4; $number>=0; $number--) {print "Please enter filename\n";
                   $userfile=<STDIN>;
                    chomp $userfile;
                    print "\nYou entered $userfile\n";
                    if (-e$userfile) {print "file found M'lord or M'lady, thanks.\n"; return;}
#return statement gets us out of the subroutine as soon as a valid file has been entered
#otherwise proceed
                    else {print "file name not valid. please try again\n";}}}

