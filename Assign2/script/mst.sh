gem5dir="/home/user/Documents/520/Assign2/gem5-master"
script_dir="/home/user/Documents/520/program/cse520/Assign2/script"

cd ${gem5dir}

# LRU 100000 graph
./build/X86/gem5.opt --outdir=result/MST_LRU_120000_256kB configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_randLocalGraph_WE_5_100000
./build/X86/gem5.opt --outdir=result/MST_LRU_120000_1M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_randLocalGraph_WE_5_100000
./build/X86/gem5.opt --outdir=result/MST_LRU_120000_4M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=4MB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_randLocalGraph_WE_5_100000

# LRU 35000 graph
./build/X86/gem5.opt --outdir=result/MST_LRU_90000_256kB configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_rMatGraph_WE_5_35000
./build/X86/gem5.opt --outdir=result/MST_LRU_90000_1M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_rMatGraph_WE_5_35000
./build/X86/gem5.opt --outdir=result/MST_LRU_90000_4M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=4MB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_rMatGraph_WE_5_35000

# SRRIP 100000 graph
./build/X86/gem5.opt --outdir=result/MST_SRRIP_120000_256kB configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l2_assoc=16 --l2_rpp="RRIPRP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_randLocalGraph_WE_5_100000
./build/X86/gem5.opt --outdir=result/MST_SRRIP_120000_1M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l2_assoc=16 --l2_rpp="RRIPRP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_randLocalGraph_WE_5_100000
./build/X86/gem5.opt --outdir=result/MST_SRRIP_120000_4M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=4MB --l2_assoc=16 --l2_rpp="RRIPRP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_randLocalGraph_WE_5_100000

# SRRIP 35000 graph
./build/X86/gem5.opt --outdir=result/MST_SRRIP_90000_256kB configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l2_assoc=16 --l2_rpp="RRIPRP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_rMatGraph_WE_5_35000
./build/X86/gem5.opt --outdir=result/MST_SRRIP_90000_1M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l2_assoc=16 --l2_rpp="RRIPRP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_rMatGraph_WE_5_35000
./build/X86/gem5.opt --outdir=result/MST_SRRIP_90000_4M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=4MB --l2_assoc=16 --l2_rpp="RRIPRP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_rMatGraph_WE_5_35000

# SHiP 100000 graph
./build/X86/gem5.opt --outdir=result/MST_SHiP_120000_256kB configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l2_assoc=16 --l2_rpp="SHiP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_randLocalGraph_WE_5_100000
./build/X86/gem5.opt --outdir=result/MST_SHiP_120000_1M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l2_assoc=16 --l2_rpp="SHiP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_randLocalGraph_WE_5_100000
./build/X86/gem5.opt --outdir=result/MST_SHiP_120000_4M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=4MB --l2_assoc=16 --l2_rpp="SHiP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_randLocalGraph_WE_5_100000

# SHiP 35000 graph
./build/X86/gem5.opt --outdir=result/MST_SHiP_90000_256kB configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l2_assoc=16 --l2_rpp="SHiP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_rMatGraph_WE_5_35000
./build/X86/gem5.opt --outdir=result/MST_SHiP_90000_1M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l2_assoc=16 --l2_rpp="SHiP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_rMatGraph_WE_5_35000
./build/X86/gem5.opt --outdir=result/MST_SHiP_90000_4M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=4MB --l2_assoc=16 --l2_rpp="SHiP()" -c benchmark/bin/MST_opt --options=./benchmark/inputs_assign2/MST_rMatGraph_WE_5_35000

