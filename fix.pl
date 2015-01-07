undef $/;
open(FH,shift) or die;
$_=<FH>;

s|leipzig-data.de/Data/(\d+)\.|leipzig-data.de/Data/$1.Leipzig.|gs;
#s|leipzig-data.de/Data/Adresse/(\d+)\.|leipzig-data.de/Data/$1.Leipzig.|gs;
#s|leipzig-data.de/Data/ExterneAdresse/|leipzig-data.de/Data/|gs;
# s|rdfs:label "|rdfs:label "Leipzig, |gs;

print;

