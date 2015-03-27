print "S Barclay\n";
print "BIFS617 Assignment 2:3\n\n";
#
#Store a DNA sequence in an array not a string and complete three operations
#first store as array
@dna=(C,C,G,T,A,A,C,G,C);
#just for me to compare, print original array
print "DNA sequence:\n";
print "@dna\n\n";
#2a Add a T to the end of the array
#push adds to the end of the sequence
push(@dna,T);
print "DNA sequence with T added to the end:\n";
print "@dna\n\n";
#2b remove first element of array and print it
#shift removes first element. by setting it equal to a scalar I can print it alone.
$c=shift(@dna);
print "First letter of the DNA sequence:";
print "$c\n\n";
#2c add T to the beginning of sequence
#unshift adds to the beginning of a sequence
unshift (@dna, T);
print "DNA sequence with T substituted for C\n";
print "@dna\n\n";
#end