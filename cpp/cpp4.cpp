#include <iostream>
using namespace std;

int x = 10; // Global variable

int main() {
    int x = 20; // Local variable

    cout << "Local x = " << x << endl;
    cout << "Global x = " << ::x << endl; // Using scope resolution operator

    return 0;
}

