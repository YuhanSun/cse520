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

volatile int val = 0;
int a[2000000];
int test_count = 100000;

/*
 * Read array in a sequential way
 */
void seq_read(int a[], int array_size, int loop_count) {
    long total_ns = 0;
    long avg_ns = 0;
    for (int i = 0; i < array_size; i++) {
        a[i] = i;
    }

    int i = 0;
    clock_t start = clock();
    for (int loopIndex = 0; loopIndex < loop_count; loopIndex++) {
        for (i = 0; i < array_size; i++) {
            val += a[i];
        }
    }
    clock_t end = clock();
    total_ns = (double) (end - start) / CLOCKS_PER_SEC * 1000000000;
    avg_ns = total_ns / loop_count / array_size;
    cout << (avg_ns) << "," << val << endl;
}

void random_read(int a[], int array_size, int loop_count) {
    long total_ns = 0;
    long avg_ns = 0;
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
    for (int loopIndex = 0; loopIndex < loop_count; loopIndex++) {
        int idx = 0;
        for (int i = 0; i < array_size; i++) {
            idx = a[idx];
            val += a[idx];
        }
    }
    clock_t end = clock();
    total_ns += (double) (end - start) / CLOCKS_PER_SEC * 1000000000;
    avg_ns = total_ns / loop_count / array_size;
//    cout << "avg: " << (avg_ns) << endl;
    cout << (avg_ns) << endl;
}

void seq_write(int a[], int array_size, int loop_count) {
    clock_t start = clock();
    for (int loop_index = 0; loop_index < loop_count; loop_index++) {

    }
}

int main(int argc, char * argv[]) {
    int array_size = atoi(argv[1]);
    cout << array_size << ',';

    int loop_count = test_count / array_size;
    if (loop_count == 0) {
        loop_count = 1;
    }
    seq_read(a, array_size, loop_count);
//    random_read(a, array_size, loop_count);
    return 0;
}
