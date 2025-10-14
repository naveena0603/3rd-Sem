#include <iostream>
using namespace std;

// Recursive function to find factorial
int factorial(int n) {
    if (n <= 1) // Base case
        return 1;
    else
        return n * factorial(n - 1); // Recursive call
}

int main() {
    int num;

    cout << "Enter a positive integer: ";
    cin >> num;

    if (num < 0)
        cout << "Factorial is not defined for negative numbers." << endl;
    else
        cout << "Factorial of " << num << " = " << factorial(num) << endl;

    return 0;
}

