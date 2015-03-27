print "S. Barclay\n";
print "BIFS617 Midterm Question 6\n";
print "Task: write a program that reads a file and prints the lines in reverse order\n";
#
#note, the instructions didn't say to get user input file so I am assuming I am to include the file into the code
#my dummy file is midtermQ6dummy.txt
#now to open file
open Q6D, "midtermQ6dummy.txt" or die $!;
#to read the contained lines into an array
@random=<Q6D>;
#close the file cuz i'm done with it
close Q6D;
#reverse array order-->effectively reversing the order of the lines within
#note that if this was a scalar and not an array, the words in the lines themselves would be reversed
@revrand= reverse @random;
#print it!
print "Lines from dummy in reverse order:\n";
print "@revrand\n";