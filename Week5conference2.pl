print "S Barclay\n";
print "BIFS617 Week 5 Conference 1\n";
print "Task: Using loop structure to test if an amino acid entered by user \n";
print "is contained within an array\n\n";
#
# Enter in my array of known amino acids, aas

@aas=("Trp","Arg","Leu","Ile","Asp");
#
#I need to get the amino acid, useraa, from the user
print "Enter three-letter amino acid abbreviation:\n";
print "Make sure to enter first letter upper case and the last two lower case.\n";
print "For example, Tryptophan would be Trp.\n";
$useraa = <STDIN>;
chomp $useraa;
#
#now I have to use loop structure and compare each array element to the user's amino acid, $useraa
#Ok, this one gave me some trouble at first. It turns out I was trying to evaluate each array element as a scalar instead of as a string.
#Once I figured that out, it was evident that I needed to use string pattern matching
#check Trp
if ($useraa =~ /$aas[0]/) {print "Amino acid found. Your amino acid is tryptophan.\n";}
#check Arg
elsif ($useraa =~ /$aas[1]/) {print "Amino acid found. Your amino acid is arginine.\n";}
#check Leu
elsif ($useraa =~ /$aas[2]/) {print "Amino acid found. Your amino acid is leucine.\n";}
#check Ilu
elsif ($useraa =~ /$aas[3]/) {print "Amino acid found. Your amino acid is isoleucine.\n";}
#check Asp
elsif ($useraa =~ /$aas[4]/) {print "Amino acid found. Your amino acid is aspartic acid.\n";}
#if none of the above then...
else {print "Amino acid not found.\n";}
