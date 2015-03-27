print "S Barclay\n";
print "BIFS617 Assignment 2:1\n\n";
#
# Enter in my array of amino acids in polypeptide chain, @aasofpoly, in the correct order
@aasofpoly=("Phe","Val","Asn","Gln","His","Leu","Cys","Gly","Ser");
#
#Part 1
#print amino acids in order
print "The sequence of amino acids in the polypeptide is:\n";
print "@aasofpoly\n\n";
#
#Part 2
#print number of amino acids
#need to represent aasofpoly as a scalar numofaa
$numofaa=@aasofpoly;
print "The number of amino acids in the polypeptide is $numofaa\n\n";
#
#Part 3
#add His to end of chain (array) with push function, then print
push(@aasofpoly, "His");
print "The sequence of amino acids in the polypeptide chain with His added on the end:\n";
print "@aasofpoly\n\n";
#
#Part 4
#using loop structure, replaced Gly with Asp as a mutation
#I'm assuming when the instructor said to have the program 'search' for it he meant at each position.
#So I saved myself some work by using the foreach loop from Tisdall pg 329
foreach $aminoacid (@aasofpoly) {$aminoacid=~ s/Gly/Arg/;}
#print the new polypeptide chain
print "The sequence of amino acids in the polypeptide chain with Arg replacing Gly\n";
print "@aasofpoly\n\n";
#
#Part 5
#get user input, as a number from 1-10. Basically, ask them to choose which position amino acid they are interested in.
#So i need to get the number first
print "Please enter amino acid position number. The number should be between 1 and 10:\n";
$uq=<STDIN>;
chomp $userquery;
#now i need to use the number entered by user (user query, uq)to print out the amino acid in that position
#but I need to be aware that the user will start numbering from one, whereas the array begins at 0
#Oh this is so AWESOME! I can use $uq-1 to access each position within my array.
#$uq-1 chooses the proper location on the array. So position one is the 0 element within the array.
#I am so happy. I thought I was going to have to do "if" statements for every single one.
#
print "The amino acid at position $uq is $aasofpoly[$uq-1]\n";
#
#Part 6
#I need to reverse the order of certain amino acids within a range the user defines, then show the entire polypeptide chain with the reversed section.
#
#First get amino acid locations from user
#beginning position
print "For reversing part of amino acid chain, please enter the beginning amino acid position number, from 1 to 10.\n\n";
$b=<STDIN>;
chomp $b;
#final position
print "For reversing part of amino acid chain, please enter the final amino acid position number, from 1 to 10, should be greater than above.\n\n";
$f=<STDIN>;
chomp $f;
#
#Second reverse order between those sections.
#make sure to subtract positions by 1 to account for zero array starting element.
@reverse=reverse @aasofpoly[$b-1 .. $f-1];
#
#so i can check my work
print "reversed section is:\n";
print "@reverse\n\n";
#Splice the reversed section back into the array
#ok, so we want to put the reversed section in after the base $b-1, hence the $b-1
#and we want it to insert before $f-1, so $f-2.
#this part took some toying with, but I got it to work after a while 
splice (@aasofpoly, ($b-1),($f-2), @reverse);
#
#print total array with inversion
print "Polypeptide chain with reversed section is @aasofpoly\n\n";
#It WORKS!!!
#
#So in my excitement at getting part 6 to work, I forgot about part 7
#Part 7
#create a string from the polypeptide array and join with a dash
#string concatenating can be simplified using join command (Tisdall pg 67) 
$polypeptide=join("-",@aasofpoly);
print "Rearranged polypeptide chain joined in traditional fashion:\n";
print "$polypeptide\n";




