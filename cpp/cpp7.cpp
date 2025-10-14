#include <iostream>
using namespace std;

class Student {
private:
    int rollNumber;    // Private member — cannot be accessed directly outside the class

public:
    string name;       // Public member — can be accessed directly

    // Function to set private data (accessible because it's inside the class)
    void setRollNumber(int r) {
        rollNumber = r;
    }

    // Function to display data
    void displayInfo() {
        cout << "Name: " << name << endl;
        cout << "Roll Number: " << rollNumber << endl;
    }
};

int main() {
    Student s1;

    // Accessing public member directly
    s1.name = "Rahul";

    // Accessing private member directly — ? Not allowed!
    // s1.rollNumber = 101;   // This would cause a compile-time error

    // Accessing private member through a public function — ? Allowed
    s1.setRollNumber(101);

    s1.displayInfo();

    return 0;
}

