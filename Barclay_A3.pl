print "S Barclay\n";
print "BIFS617 Assignment 3\n";
#
#write a program that calculates and
#prints a set of measurements for each tissue type given
#
#measurements for each tissue stored in an array
@brain=(65,69,70,63,70,68);
@heart=(102,95,98,110);
@lung=(112,115,113,109,95,98,100);
#
#
#printf statements not needed because counts will always be a whole number
print "a\) Number of Measurements:\n";
#call subroutine to get measurement numbers for the brain
$numbrainmeasure= number_measurements (@brain);
print "Number of measurements for brain: $numbrainmeasure\n";
#call subroutine to get measurement numbers for the heart
$numheartmeasure= number_measurements (@heart);
print "Number of measurements for heart: $numheartmeasure\n";
#call subroutine to get measurement numbers for the lung
$numlungmeasure= number_measurements (@lung);
print "Number of measurements for lung: $numlungmeasure\n\n\n";
#
#
#
#Use printf from now on to delimit the number of places past the decimal allowed.
#Note that the %.2f is within the quotation marks of the print statement instead of the scalar to be printed.
#the scalar follows the quotation marks within the print statement.
print "b\) Average Enzyme Activity:\n";
#call subroutine to get average for the brain
$avgbrain= avg (@brain);
printf "Average enzyme activity in the brain: %.2f\n",$avgbrain;
#call subroutine to get average for the heart
$avgheart= avg (@heart);
printf "Average enzyme activity in the heart: %.2f\n",$avgheart;
#call subroutine to get average for the lung
$avglung= avg (@lung);
printf "Average enzyme activity in the lung: %.2f\n\n\n",$avglung;
#
print "c\) Variance:\n";
#call subroutine to get variance for brain
$varbrain= var (@brain);
printf "Variance of brain data: %.2f\n",$varbrain;
#call subroutine to get variance for heart
$varheart= var (@heart);
printf "Variance of heart data: %.2f\n",$varheart;
#call subroutine to get variance for lung
$varlung= var (@lung);
printf "Variance of lung data: %.2f\n\n\n",$varlung;
#
print "d\) Standard deviation:\n";
#call subroutine to get standard deviaion for brain
$SDbrain= stddev (@brain);
printf "Standard deviation of brain data: %.2f\n",$SDbrain;
#call subroutine to get standard deviaion for heart
$SDheart= stddev (@heart);
printf "Standard deviation of heart data: %.2f\n", $SDheart;
#call subroutine to get standard deviaion for lung
$SDlung= stddev (@lung);
printf "Standard deviation of lung data: %.2f\n\n\n", $SDlung;


#subroutine for calculating standard deviation
sub stddev {
    #@_ is the array passed from the calling program
    my ($V)= var (@_);
    #initialize "my" variables. my limits to the subroutine
    my ($dev) =0;
    #using the built in function for square root. can also do ($V)**0.5 to accomplish it as well
    $dev = sqrt ($V);
    #send it to the calling program
    return $dev;
}


#subroutine for calculating variance
sub var {
    #@_ is the array passed from the calling program
    my($n)= number_measurements (@_);
    my($xbar)= avg (@_);
    #initialize "my" variables. my limits to the subroutine
    my ($i)=0;
    my ($summation)=0;
    #for loop to sum the difference in each position and average, squared
        for ($i=0; $i < $n; ++$i) {$summation+=(($_[$i]-$xbar)**2);}
    my ($var)=0;
    #to finish variance calculation
    $var=(1/($n-1))*$summation;
    #send it to the calling program
    return $var;
    }


#subroutine for average calculations
sub avg {
    #so we need to call the number of measurements subroutine to get our n
    my($n)= number_measurements (@_);
    #@_ is the array passed from the calling program
    #initialize "my" variables. my limits to the subroutine
    my ($sum)=0;
    my ($i)=0;
    #for loop adds the value of i position to the sum
    for ($i=0; $i < $n; ++$i) {$sum+=$_[$i];}
    #divide the sum by n to get the avg
    $avg=$sum/$n;
    #send it to the calling program
    return $avg;
    }


#subroutine for number of measurements
sub number_measurements {
                        #initialize "my" variables. my limits to the subroutine
                        my ($number)=();
                         #@_ is the array passed from the calling program
                         #setting the array equal to a scalar gives the number of items in the array
                         $number=@_;
                         #send it to the calling program
                         return $number;}
