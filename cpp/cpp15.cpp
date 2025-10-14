#include <iostream>
using namespace std;

class Number {
private:
    int value;

public:
    // Constructor
    Number(int v = 0) {
        value = v;
    }

    // Function to display value
    void display() {
        cout << "Value = " << value << endl;
    }

    // ---------- Unary Operator Overloading ----------
    // Overload unary minus (-) to negate the value
    Number operator-() {
        Number temp;
        temp.value = -value;
        return temp;
    }

    // ---------- Binary Operator Overloading ----------
    // Overload binary + to add two Number objects
    Number operator+(const Number &n) {
        Number temp;
        temp.value = value + n.value;
        return temp;
    }
};

int main() {
    Number n1(10), n2(20);

    cout << "Original numbers:" << endl;
    n1.display();
    n2.display();

    // Binary operator +
    Number n3 = n1 + n2;
    cout << "\nAfter adding n1 and n2 using overloaded + operator:" << endl;
    n3.display();

    // Unary operator -
    Number n4 = -n1;
    cout << "\nAfter applying unary - operator on n1:" << endl;
    n4.display();

    return 0;
}

