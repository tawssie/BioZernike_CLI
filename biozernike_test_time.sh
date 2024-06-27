#!/bin/bash

echo "biozernike_test_time.sh script can only be executed in the bash shell."

start_time=$(date +%s)

for i in {1..10000}
#for i in {1..1000}
do
    java -jar biozernike.jar 1hhs_A.pdb 1.0 > /dev/null
done

end_time=$(date +%s)

elapsed_time=$((end_time - start_time))
elapsed_minutes=$(($elapsed_time / 60))
elapsed_seconds=$(($elapsed_time % 60))

echo "Total time elapsed: $elapsed_minutes minutes and $elapsed_seconds seconds."

