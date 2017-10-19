## Run from shell:

cat <input txt file(s)> | python ./wordcount_mapper.py | sort -k1,1 | python ./wordcount_reducer.py

# Execution with Hadoop using the VM (pseudo cluster)
