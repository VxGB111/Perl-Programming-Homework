print "S. Barclay\n";
print "BIFS617 Week 8 Conference 2\n\n";
#
#
@array=(T,C,C,C,G,A,T,T,A,C,C,A,T,G,C,G);
print "Original array:\n @array\n";
#
#call my subroutine
@shuffledsequence = shufflebunny (@newarray);
print "Shuffled sequence:\n @shuffledsequence\n";
#subroutine to shuffle string of variables from array
sub shufflebunny {my ($string)= ();
                  $string = join('',@array);
                  my ($length) = length $string;
                  #so for all positions starting at i=0 until the end of the string
                        for (my ($i)=0; $i < $length; $i++) {
                          #j is a random position
                          #so the example in the notes didn't work, but this function
                          #is working correctly (below)
                          my ($j)= int(rand($length-1));
                          #the next three statements are my switching statements
                          #first I store my valua at i in a new scalar
                          my $temp= substr($string, $i, 1);
                          #then I substitute the value at j for i
                          substr($string, $i, 1)= substr($string, $j, 1);
                          #now i substitute i for j
                          substr($string, $j,1)=$temp; }
                  #to get new array output
                  my (@newarray)= split('',$string);
                                    return @newarray;}
