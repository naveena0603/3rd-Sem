#include <iostream>
using namespace std;

class Student {
private:
    string name;
    int rollNumber;

public:
    // Parameterized constructor
    Student(string n, int r) {
        name = n;
        rollNumber = r;
        cout << "Parameterized constructor called for " << name << endl;
    }

    // Copy constructor
    Student(const Student &s) {
        name = s.name;
        rollNumber = s.rollNumber;
        cout << "Copy constructor called for " << name << endl;
    }

    // Function to display student details
    void display() {
        cout << "Name: " << name << ", Roll Number: " << rollNumber << endl;
    }
};

int main() {
    // Create an object using parameterized constructor
    Student s1("Rahul", 101);
    s1.display();
    cout << endl;

    // Create a new object as a copy of s1
    Student s2 = s1;  // Copy constructor is called
    s2.display();

    return 0;
}

