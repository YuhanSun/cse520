#!/bin/bash
for i in 1 2 4 8 16 32 64 128 256 512 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576; do
	./main 0 ${i} >> seq_read.txt
	./main 1 ${i} >> random_read.txt
	./main 2 ${i} >> seq_write.txt
	./main 3 ${i} >> random_write.txt
done