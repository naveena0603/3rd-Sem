#include <iostream>
using namespace std;

void callByReference(int &x) {
    x = x + 10; // This change affects the original variable
    cout << "Inside function (Call by Reference): x = " << x << endl;
}

int main() {
    int a = 5;
    cout << "Before function call: a = " << a << endl;
    callByReference(a);
    cout << "After function call: a = " << a << endl;
    return 0;
}

