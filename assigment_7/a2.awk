#!/bin/awk -f

BEGIN {
    FS = ",";  
}

{
    if ( $1 ~ /^s/ || $1 ~ /8$/ ) {
        print $1;
    }
}
