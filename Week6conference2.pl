#S Barclay
#Bifs617 Week 6 Conference 2
#
#access directory "Week 6" and print
#sequences in files to an output file with a ||
#
#output file week6outfile.txt
open W6OUT, ">week6outfile.txt" or die $!;
#print my info to output file
print W6OUT "S. Barclay\n";
print W6OUT "BIFS 617\n";
print W6OUT "Week 6 Conference 2\n\n";
#set directory scalar
$dirweek6="C:/Users/user/Documents/BIFS617 Advanced Bioinf/Week 6/";
#open said directory
opendir(DW6,$dirweek6) or die "I can't dooo iiiit! Can't open Week 6 directory!";
#ok, i checked and it worked
#now to read the files
@filesweek6=readdir(DW6);
#now i need to read the files contents within the directory and print to the output file
foreach $filesweek6 (@filesweek6)
    {open DNASEQ, "$dirweek6/$filesweek6";
        if (-f "$dirweek6/$filesweek6"){
            @DNA=<DNASEQ>;
            close (DNASEQ);
            print W6OUT ">$filesweek6\n\n";
            print W6OUT "@DNA\n\n";
            print W6OUT "||\n\n";}}
#closing all open stuff
close W6OUT;
closedir DW6;