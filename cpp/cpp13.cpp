#include <iostream>
using namespace std;

class Student {
private:
    string name;
    int rollNumber;
    int age;

public:
    // Constructor 1: No parameters (default constructor)
    Student() {
        name = "Unknown";
        rollNumber = 0;
        age = 18;
        cout << "Default constructor called" << endl;
    }

    // Constructor 2: Two parameters
    Student(string n, int r) {
        name = n;
        rollNumber = r;
        age = 18;
        cout << "Two-parameter constructor called" << endl;
    }

    // Constructor 3: Three parameters
    Student(string n, int r, int a) {
        name = n;
        rollNumber = r;
        age = a;
        cout << "Three-parameter constructor called" << endl;
    }

    // Function to display student details
    void display() {
        cout << "Name: " << name << ", Roll Number: " << rollNumber << ", Age: " << age << endl;
    }
};

int main() {
    // Calling default constructor
    Student s1;
    s1.display();
    cout << endl;

    // Calling two-parameter constructor
    Student s2("Rahul", 101);
    s2.display();
    cout << endl;

    // Calling three-parameter constructor
    Student s3("Priya", 102, 20);
    s3.display();

    return 0;
}

