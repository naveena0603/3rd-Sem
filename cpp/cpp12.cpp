#include <iostream>
using namespace std;

class Student {
private:
    string name;
    int rollNumber;

public:
    // Constructor (automatically called when an object is created)
    Student(string n, int r) {
        name = n;
        rollNumber = r;
        cout << "Constructor called for " << name << endl;
    }

    // Function to display student details
    void display() {
        cout << "Name: " << name << ", Roll Number: " << rollNumber << endl;
    }

    // Destructor (automatically called when an object goes out of scope)
    ~Student() {
        cout << "Destructor called for " << name << endl;
    }
};

int main() {
    cout << "Creating first student..." << endl;
    Student s1("Rahul", 101);

    cout << "Creating second student..." << endl;
    Student s2("Priya", 102);

    cout << "\nDisplaying details:\n";
    s1.display();
    s2.display();

    cout << "\nEnd of main function.\n";
    return 0;
}

