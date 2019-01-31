#include <iostream>
#include <vector>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <ctime>
#include <algorithm>

using namespace std;

volatile int val = 0;
int a[2000000];// the test array
int test_count = 100000;// how many times for read

/**
 * Read array in a sequential way
 * @param a
 * @param array_size
 * @param loop_count
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
    total_ns = (double) (end - start) / CLOCKS_PER_SEC * 1000000000;// the total ns
    avg_ns = total_ns / loop_count / array_size;// average access time
    cout << (avg_ns) << endl;
}

/**
 * Random read
 * @param a
 * @param array_size
 * @param loop_count
 */
void random_read(int a[], int array_size, int loop_count) {
    long total_ns = 0;
    long avg_ns = 0;
    srand(time(NULL));
    vector<int> v(array_size);
    for (int i = 0; i < array_size; i++) {
        v[i] = i;
    }

    // Generate the chasing pointer.
    // This can make sure each element is accessed exactly once.
    random_shuffle(v.begin(), v.end());
    for (int i = 0; i < array_size; i++) {
        // make sure v[i] != i
        if (v[i] == i && i + 1 < array_size) {
            int temp = v[i];
            v[i] = v[i+1];
            v[i+1] = temp;
        }
        a[i] = v[i];//initialize the a[i] with random value
    }

    // Record the random read time of an array
    clock_t start = clock();
    for (int loopIndex = 0; loopIndex < loop_count; loopIndex++) {
        int idx = 0;
        for (int i = 0; i < array_size; i++) {
            idx = a[idx];//chase pointer to next position
            val += a[idx];
        }
    }
    clock_t end = clock();
    total_ns += (double) (end - start) / CLOCKS_PER_SEC * 1000000000;
    avg_ns = total_ns / loop_count / array_size;
    cout << (avg_ns) << endl;
}

/**
 * Sequential write function
 * @param a
 * @param array_size
 * @param loop_count
 */
void seq_write(int a[], int array_size, int loop_count) {
    long total_ns = 0;
    long avg_ns = 0;
    clock_t start = clock();
    for (int loop_index = 0; loop_index < loop_count; loop_index++) {
        for ( int i = 0; i < array_size; i++) {
            a[i] = i; // linear write
        }
    }
    clock_t end = clock();
    total_ns += (double) (end - start) / CLOCKS_PER_SEC * 1000000000;
    avg_ns = total_ns / loop_count / array_size;
    cout << (avg_ns) << endl;
}

/**
 * Random write function
 * @param a
 * @param array_size
 * @param loop_count
 */
void random_write(int a[], int array_size, int loop_count) {
    long total_ns = 0;
    long avg_ns = 0;
    srand(time(NULL));
    vector<int> v(array_size);
    for (int i = 0; i < array_size; i++) {
        v[i] = i;
    }

    // Generate the chasing pointer
    random_shuffle(v.begin(), v.end());

    // same with random read, now v stores the random value
    for (int i = 0; i < array_size; i++) {
        if (v[i] == i && i + 1 < array_size) {
            int temp = v[i];
            v[i] = v[i+1];
            v[i+1] = temp;
        }
    }

    // Record the random write time of an array
    clock_t start = clock();
    for (int loopIndex = 0; loopIndex < loop_count; loopIndex++) {
        for (int i = 0; i < array_size; i++) {
            int idx = v[i]; // the random position
            a[idx] = i; // write to a random position
            val += a[idx];
        }
    }
    clock_t end = clock();
    total_ns += (double) (end - start) / CLOCKS_PER_SEC * 1000000000;
    avg_ns = total_ns / loop_count / array_size;
    cout << (avg_ns) << endl;
}

int main(int argc, char * argv[]) {
    // the operations to be tested:
    // 0: linear read
    // 1: random read
    // 2: linear write
    // 3: random write
    int op = atoi(argv[1]);

    // the array size
    int array_size = atoi(argv[2]);
    cout << array_size << ',';

    // how many times to access the same array and get the average
    int loop_count = test_count / array_size;
    // if the array_size is larger than the test_count, at least traverse the array from 0 to array_size once
    if (loop_count == 0) {
        loop_count = 1;
    }

    switch (op){
        case 0:
            seq_read(a, array_size, loop_count);
            break;
        case 1:
            random_read(a, array_size, loop_count);
            break;
        case 2:
            seq_write(a, array_size, loop_count);
            break;
        case 3:
            random_write(a, array_size, loop_count);
            break;
        default:
            break;
    }

    return 0;
}
