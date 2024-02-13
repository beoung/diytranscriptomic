

for file in *fastq.gz; do
	subsample=${file:0:-9}_10K_subsample.fastq
	echo $subsample
	zcat $file | head -n 40000 > $subsample
	gzip $subsample
done


