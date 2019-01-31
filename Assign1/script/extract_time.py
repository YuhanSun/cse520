keyword="system.cpu.numCycles"

types = ['seq_read', 'random_read', 'seq_write', 'random_write']
test_count = 100000

for type in types:
    wfile = open(type + "_gem5.txt", "w")
    i = 1
    while i <= 1048576:
        filename = "gem5_{0}_{1}.txt".format(type, i)
        print filename
        rfile = open(filename, "r")
        loop = test_count / i
        if loop == 0:
            loop = 1
        for line in rfile:
            if (line.__contains__(keyword)):
                line = line.replace(keyword, "")
                list = line.split(" ")
                for element in list:
                    if element.__eq__("") == False:
                        cycles_count = long(element) / 10
                        wfile.write("{0},{1}\n".format(i, cycles_count / loop / i))
                        break
        rfile.close()
        i = i * 2
    wfile.close()
