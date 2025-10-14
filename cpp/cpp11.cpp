#include <iostream>
using namespace std;

class Student {
private:
    string name;
    int marks;

public:
    // Constructor to initialize private data
    Student(string n, int m) {
        name = n;
        marks = m;
    }

    // Declare friend function
    friend void displayDetails(Student s);
};

// Friend function definition
void displayDetails(Student s) {
    // Accessing private data of the class directly
    cout << "Name: " << s.name << endl;
    cout << "Marks: " << s.marks << endl;
}

int main() {
    // Create an object of Student
    Student s1("Rahul", 85);

    // Call the friend function
    displayDetails(s1);

    return 0;
}

