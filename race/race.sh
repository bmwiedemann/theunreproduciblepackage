#!/bin/sh

racepart()
{
    input=$1
    echo $input > tmpfile
    #sleep 0.$((RANDOM*3)) # optional
    cat tmpfile 2>/dev/null
    rm -f tmpfile
}

for i in $(seq 1 10) ; do
    # & backgrounds the process to do parallel processing
    racepart $i &
done > ../out/race-result
wait
