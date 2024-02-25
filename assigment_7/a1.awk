#!/bin/awk -f

BEGIN {
    FS = ",";  
}

{
    print $2 "_" $3;
}

END {
    print "number of fields: ", NF;
    print "number of records: ", NR;   
}
