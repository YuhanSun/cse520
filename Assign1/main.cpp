#include <iostream>
#include <vector>
#include <chrono>
#include <unistd.h>

using namespace std;

int main(int argc, char * argv[]) {
    int array_size = atoi(argv[1]);
    cout << array_size << ',';
//    int testCount = 100000; //how many times for testing, will be averaged by this

//    int loopCount = testCount / array_size; //read the array for loopCount
    int loopCount = 1000;
    long total_ns = 0;
    long avg_ns = 0;
    int val = 0;

    // sequential
//    int * a = new int[array_size];
    int a[100000];
//    if (loopCount == 0) {
//        int access_count = 0;
//        for (int i = 0; i < array_size; i++) {
//            if (access_count == testCount) {
//                break;
//            }
//            auto start = chrono::steady_clock::now();
//            a[i];
//            auto end = chrono::steady_clock::now();
//            total_ns += chrono::duration_cast<chrono::nanoseconds>(end - start).count();
//            access_count++;
//        }
//        avg_ns = total_ns / access_count;
//    }
//    else {
    auto start = chrono::steady_clock::now();
    for (int loopIndex = 0; loopIndex < loopCount; loopIndex++) {
            for (int i = 0; i < array_size; i++) {
//                cout << a[i] << endl;
                val += a[i];
            }
    }
    auto end = chrono::steady_clock::now();
    total_ns += chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    avg_ns = total_ns / loopCount / array_size;
//    }
    cout << (avg_ns) << endl;
    val = val+1;

//    cout << argc << endl;
//    vector<int> array;
    return 0;
}