gem5dir="/home/user/Documents/520/Assign2/gem5-master"
script_dir="/home/user/Documents/520/program/cse520/Assign2/script"

cd ${gem5dir}

#echo \"

# LRU 120000 graph
./build/X86/gem5.opt --outdir=result/bfs_LRU_120000_256kB configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_randLocalGraph_J_5_120000
./build/X86/gem5.opt --outdir=result/bfs_LRU_120000_1M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_randLocalGraph_J_5_120000
./build/X86/gem5.opt --outdir=result/bfs_LRU_120000_4M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=4MB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_randLocalGraph_J_5_120000

# LRU 90000 graph
./build/X86/gem5.opt --outdir=result/bfs_LRU_90000_256kB configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_rMatGraph_J_5_90000
./build/X86/gem5.opt --outdir=result/bfs_LRU_90000_1M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_rMatGraph_J_5_90000
./build/X86/gem5.opt --outdir=result/bfs_LRU_90000_4M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=4MB --l2_assoc=16 --l2_rpp="LRURP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_rMatGraph_J_5_90000

# SRRIP 120000 graph
./build/X86/gem5.opt --outdir=result/bfs_SRRIP_120000_256kB configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l2_assoc=16 --l2_rpp="RRIPRP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_randLocalGraph_J_5_120000
./build/X86/gem5.opt --outdir=result/bfs_SRRIP_120000_1M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l2_assoc=16 --l2_rpp="RRIPRP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_randLocalGraph_J_5_120000
./build/X86/gem5.opt --outdir=result/bfs_SRRIP_120000_4M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=4MB --l2_assoc=16 --l2_rpp="RRIPRP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_randLocalGraph_J_5_120000

# SRRIP 90000 graph
./build/X86/gem5.opt --outdir=result/bfs_SRRIP_90000_256kB configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l2_assoc=16 --l2_rpp="RRIPRP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_rMatGraph_J_5_90000
./build/X86/gem5.opt --outdir=result/bfs_SRRIP_90000_1M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l2_assoc=16 --l2_rpp="RRIPRP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_rMatGraph_J_5_90000
./build/X86/gem5.opt --outdir=result/bfs_SRRIP_90000_4M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=4MB --l2_assoc=16 --l2_rpp="RRIPRP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_rMatGraph_J_5_90000

# SHiP 120000 graph
./build/X86/gem5.opt --outdir=result/bfs_SHiP_120000_256kB configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l2_assoc=16 --l2_rpp="SHiP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_randLocalGraph_J_5_120000
./build/X86/gem5.opt --outdir=result/bfs_SHiP_120000_1M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l2_assoc=16 --l2_rpp="SHiP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_randLocalGraph_J_5_120000
./build/X86/gem5.opt --outdir=result/bfs_SHiP_120000_4M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=4MB --l2_assoc=16 --l2_rpp="SHiP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_randLocalGraph_J_5_120000

# SHiP 90000 graph
./build/X86/gem5.opt --outdir=result/bfs_SHiP_90000_256kB configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=256kB --l2_assoc=16 --l2_rpp="SHiP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_rMatGraph_J_5_90000
./build/X86/gem5.opt --outdir=result/bfs_SHiP_90000_1M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=1MB --l2_assoc=16 --l2_rpp="SHiP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_rMatGraph_J_5_90000
./build/X86/gem5.opt --outdir=result/bfs_SHiP_90000_4M configs/example/se.py --cpu-type=AtomicSimpleCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=4MB --l2_assoc=16 --l2_rpp="SHiP()" -c benchmark/bin/BFS_opt --options=./benchmark/inputs_assign2/BFS_rMatGraph_J_5_90000
