#include <iostream>
using namespace std;

class Student {
private:
    string name;
    int rollNumber;

public:
    // Constructor
    Student(string n, int r) {
        name = n;
        rollNumber = r;
    }

    // Function to display details
    void display() {
        cout << "Name: " << name << ", Roll Number: " << rollNumber << endl;
    }

    // Function to update roll number
    void setRoll(int r) {
        rollNumber = r;
    }
};

int main() {
    // Creating a Student object
    Student s1("Rahul", 101);

    // Pointer to the object
    Student *ptr;
    ptr = &s1;  // ptr points to s1

    cout << "Accessing object using pointer:" << endl;
    ptr->display();  // Using arrow operator to access members

    // Manipulating object through pointer
    ptr->setRoll(202);
    cout << "\nAfter updating roll number through pointer:" << endl;
    ptr->display();

    return 0;
}

