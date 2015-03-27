print "S Barclay\n";
print "BIFS617 Week 4 Conference 2\n";
print "Task: From list to array to selections within array\n\n";
#From list to array, then print third element, protein, two empty lines,
#then fifth element, hemoglobin
#array indices start at 0
#enter as a list because that's what I'm assuming the directions want
$a= 'peroxidase';
$b= 'gene';
$c= 'protein';
$d= 'oxidase';
$e= 'hemoglobin';
#Store list as an array
@randomwords = ($a,$b,$c,$d,$e);
#print protein followed by two vertical spaces
print "$randomwords[2]\n\n\n";
#print hemoglobin
print "$randomwords[4]\n\n";
