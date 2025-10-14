#include <iostream>
using namespace std;

// Base class
class Person {
public:
    string name;
    void setName(string n) {
        name = n;
    }
};

// Derived class
class Student : public Person {
public:
    int rollNumber;
    void setRoll(int r) {
        rollNumber = r;
    }
    void display() {
        cout << "Name: " << name << ", Roll Number: " << rollNumber << endl;
    }
};

int main() {
    Student s1;
    s1.setName("Rahul");
    s1.setRoll(101);
    s1.display();
    return 0;
}

