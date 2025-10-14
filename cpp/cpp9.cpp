#include <iostream>
using namespace std;

class MathOperations {
public:
    // Function 1: Add two integers
    int add(int a, int b) {
        return a + b;
    }

    // Function 2: Add three integers
    int add(int a, int b, int c) {
        return a + b + c;
    }

    // Function 3: Add two doubles
    double add(double a, double b) {
        return a + b;
    }
};

int main() {
    MathOperations math;

    cout << "Sum of two integers (10, 20): " << math.add(10, 20) << endl;
    cout << "Sum of three integers (10, 20, 30): " << math.add(10, 20, 30) << endl;
    cout << "Sum of two doubles (5.5, 2.3): " << math.add(5.5, 2.3) << endl;

    return 0;
}

