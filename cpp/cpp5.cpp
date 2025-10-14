#include <iostream>
using namespace std;

// Inline function definition
inline int square(int x) {
    return x * x;
}

int main() {
    int num;

    cout << "Enter a number: ";
    cin >> num;

    cout << "Square of " << num << " = " << square(num) << endl;

    return 0;
}

