print "S Barclay\n";
print "Week 9 conference 2\n";
print "Create subroutines to check a sequence and determine if it is DNA or protein\n\n";
#
#
print "input sequence:\n";
$userseq=<STDIN>;
chomp $userseq;
#
$isitdna= DNA ($userseq);
print "$isitdna\n";
#
#
$isitprotein= protein ($userseq);
print "$isitprotein\n";
#
#
#DNA subroutine
sub DNA {
    my (@array)=@_;
    my ($data)=$array[0];
if ($data=~/[atcg]/ && $data !~ /[vlimpfwsnqykrhde]/ && $data !~ /[bjouxz1234567890]/) {
    $answerdna= "this is DNA";}
return $answerdna;
}
#
#Protein subroutine
sub protein {
    my (@array)=@_;
    my ($data)=$array[0];
if ($data=~/[atcg]/ && $data =~ /[vlimpfwsnqykrhde]/ && $data !~ /[bjouxz1234567890]/) {
    $answerp ="This is a protein";}
return $answerp;
}
#
