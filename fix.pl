undef $/;
open(FH,shift) or die;
$_=<FH>;

#s|leipzig-data.de/Data/(\d+)\.|leipzig-data.de/Data/$1.Leipzig.|gs;
#s|leipzig-data.de/Data/Adresse/(\d+)\.|leipzig-data.de/Data/$1.Leipzig.|gs;
#s|leipzig-data.de/Data/ExterneAdresse/|leipzig-data.de/Data/|gs;
#s|rdfs:label "|rdfs:label "Leipzig, |gs;
#s|ld:hasURL "([^"]+)"|ld:hasURL <$1>|gs;
s|ld:hasStadtRef "(\S+)"|ld:hasStadtRef <http://leipzig-data.de/Data/StadtId/Amt.$1>|gs;
print;

