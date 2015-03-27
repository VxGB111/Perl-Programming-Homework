print "S. Barclay\n";
print "BIFS 617 Midterm Exam Question 3";
print "Task: Calculate AT and CG percentages for a given sequence\n\n";
#calculate AT and CG percentages
#get user input sequence  
print "Please enter DNA sequence:\n";
$DNA=<STDIN>;
chomp $DNA;

#use sequence given in midterm to test it ACGTAGCGCGTAATAGGCGCCGCGTCAACGCATGACGATCGT
#
#need to explode into array
@DNA=split ('', $DNA);
#need to create a loop to give me counts of all nucleotides
#Tisdall page 73
#
#initialize counts of nucleotides
$countA=0;
$countC=0;
$countT=0;
$countG=0;
$errors=0;
#
#create foreach loop to test each base and assign numeric value to the proper count
#matching [AT] pg 336
#Tisdall pg 322 for ++
foreach $DNA (@DNA) {if ($DNA eq 'A'){++$countA;}
    elsif ($DNA eq 'T'){++$countT;}
    elsif ($DNA eq 'C'){++$countC;}
    elsif ($DNA eq 'G'){++$countG;}
#these elsifs are for the eventuality that someone enters lower case
    elsif ($DNA eq 't'){++$countT;}
    elsif ($DNA eq 'c'){++$countC;}
    elsif ($DNA eq 'g'){++$countG;}
    elsif ($DNA eq 'a'){++$countA;}
#and just in case someone enters an improper letter
    else {print "I don't recognize this base!\n"; $errors++;}}
#
#Now to determine the number of bases
print "\nCount of A: $countA\n";
print "Count of T: $countT\n";
print "Count of C: $countC\n";
print "Count of G: $countG\n";
print "Count of errors: $errors\n\n";
#Now i need combined AT and CG counts
$AT=$countA + $countT;
$CG=$countC + $countG;
$total=$AT + $CG + $errors;
print "Occurrences of AT: $AT\n";
print "Occurrences of CG: $CG\n";
print "Total number of nucleotides (including extraneous error base locations): $total\n\n";
$percentAT=($AT/$total)*100;
$percentCG=($CG/$total)*100;
print "Percent AT in sequence: $percentAT \% \n";
print "Percent CG in sequence: $percentCG \% \n";
