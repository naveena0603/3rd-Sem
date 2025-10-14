#include <iostream>
using namespace std;

class Student {
private:
    int rollNumber;
    string name;

public:
    // Constructor using 'this' pointer
    Student(int rollNumber, string name) {
        // 'this->' distinguishes member variables from parameters
        this->rollNumber = rollNumber;
        this->name = name;
    }

    // Member function using 'this' pointer to return the current object
    void display() {
        cout << "Name: " << this->name << endl;
        cout << "Roll Number: " << this->rollNumber << endl;
    }
};

int main() {
    // Creating an object of Student
    Student s1(101, "Rahul");

    // Displaying details using function that uses 'this' pointer
    s1.display();

    return 0;
}

