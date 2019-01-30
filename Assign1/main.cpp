#include <iostream>
#include <vector>
//#include <chrono>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <ctime>
#include <algorithm>

using namespace std;

void seq_read(int a[], int array_size) {
    // sequential
    int loopCount = 10000;
    long total_ns = 0;
    long avg_ns = 0;
    int val = 0;

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
//    auto start = chrono::steady_clock::now();
    clock_t start = clock();
    for (int loopIndex = 0; loopIndex < loopCount; loopIndex++) {
        for (int i = 0; i < array_size; i++) {
//                cout << a[i] << endl;
            val += a[i];
        }
    }
    clock_t end = clock();
//    auto end = chrono::steady_clock::now();
//    total_ns += chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    total_ns = (double) (end - start) / CLOCKS_PER_SEC * 1000000000;
    avg_ns = total_ns / loopCount / array_size;
//    }
    cout << (avg_ns) << endl;
    val = val+1;
}

void random_read(int a[], int array_size) {
    int loopCount = 10000;
    long total_ns = 0;
    long avg_ns = 0;
    int val = 0;
    srand(time(NULL));
    vector<int> v(array_size);
    for (int i = 0; i < array_size; i++) {
        v[i] = i;
    }

    // Generate the chasing pointer
    random_shuffle(v.begin(), v.end());
    for (int i = 0; i < array_size; i++) {
        if (v[i] == i && i + 1 < array_size) {
            int temp = v[i];
            v[i] = v[i+1];
            v[i+1] = temp;
        }
        a[i] = v[i];
    }

    // Record the random read time of an array
    clock_t start = clock();
    for (int loopIndex = 0; loopIndex < loopCount; loopIndex++) {
        int idx = 0;
        for (int i = 0; i < array_size; i++) {
            idx = a[idx];
            val += a[idx];
//            cout << idx << endl;
        }
    }
//    cout << ((double) (end - start)) << endl;
//    cout << CLOCKS_PER_SEC << endl;
    clock_t end = clock();
    total_ns += (double) (end - start) / CLOCKS_PER_SEC * 1000000000;
//    cout << "total_ns: " << total_ns << endl;
    avg_ns = total_ns / loopCount / array_size;
    cout << "avg: " << (avg_ns) << endl;
}

int main(int argc, char * argv[]) {
    int array_size = atoi(argv[1]);
    cout << array_size << ',';
//    int testCount = 100000; //how many times for testing, will be averaged by this

//    int loopCount = testCount / array_size; //read the array for loopCount
//    int * a = new int[array_size];
    int a[1000000];

//    seq_read(a, array_size);
    random_read(a, array_size);

//    cout << argc << endl;
//    vector<int> array;
    return 0;
}
