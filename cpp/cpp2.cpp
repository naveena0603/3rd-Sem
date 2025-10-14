#include <iostream>
using namespace std;

void callByValue(int x) {
    x = x + 10; // This change won't affect the original variable
    cout << "Inside function (Call by Value): x = " << x << endl;
}

int main() {
    int a = 5;
    cout << "Before function call: a = " << a << endl;
    callByValue(a);
    cout << "After function call: a = " << a << endl;
    return 0;
}

