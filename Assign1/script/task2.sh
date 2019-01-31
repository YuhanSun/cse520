gem5dir="/home/user/Documents/520/Assign1/gem5"
script_dir="/home/user/Documents/520/program/cse520/Assign1/script"

./make

cd ${gem5dir}

#for i in 1 2 4 8 16 32 64 128 256 512 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576; do
#	${gem5dir}/build/X86/gem5.opt ${gem5dir}/configs/example/se.py -c ${script_dir}/main '--options=0 '${i}''
#	mv ${gem5dir}/m5out/stats.txt ${script_dir}/gem5_seq_read_${i}.txt
#done

for i in 1 2 4 8 16 32 64 128 256 512 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576; do
	${gem5dir}/build/X86/gem5.opt ${gem5dir}/configs/example/se.py -c ${script_dir}/main '--options=1 '${i}''
	mv ${gem5dir}/m5out/stats.txt ${script_dir}/gem5_random_read_${i}.txt
done

for i in 1 2 4 8 16 32 64 128 256 512 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576; do
	${gem5dir}/build/X86/gem5.opt ${gem5dir}/configs/example/se.py -c ${script_dir}/main '--options=2 '${i}''
	mv ${gem5dir}/m5out/stats.txt ${script_dir}/gem5_seq_write_${i}.txt
done

for i in 1 2 4 8 16 32 64 128 256 512 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576; do
	${gem5dir}/build/X86/gem5.opt ${gem5dir}/configs/example/se.py -c ${script_dir}/main '--options=3 '${i}''
	mv ${gem5dir}/m5out/stats.txt ${script_dir}/gem5_random_write_${i}.txt
done
