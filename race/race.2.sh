#!/bin/sh

racepart()
{
    input=$1
    sleep 0.1
    echo $input
}

for i in $(seq 1 10) ; do
    # & backgrounds the process to do parallel processing
    racepart $i &
done > ../out/race2-result
wait
