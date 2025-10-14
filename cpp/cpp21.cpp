#include <iostream>
using namespace std;

// Base class
class Person {
public:
    string name;

    void setName(string n) {
        name = n;
    }

    void displayName() {
        cout << "Name: " << name << endl;
    }
};

// Derived class 1 (virtual inheritance)
class Student : virtual public Person {
public:
    int rollNumber;

    void setRoll(int r) {
        rollNumber = r;
    }

    void displayStudent() {
        cout << "Roll Number: " << rollNumber << endl;
    }
};

// Derived class 2 (virtual inheritance)
class Teacher : virtual public Person {
public:
    string subject;

    void setSubject(string s) {
        subject = s;
    }

    void displayTeacher() {
        cout << "Subject: " << subject << endl;
    }
};

// Derived class inheriting from both Student and Teacher
class TeachingAssistant : public Student, public Teacher {
public:
    void display() {
        // No ambiguity in accessing name due to virtual inheritance
        displayName();
        displayStudent();
        displayTeacher();
    }
};

int main() {
    TeachingAssistant ta;

    ta.setName("Rahul");        // Set name from Person class
    ta.setRoll(101);             // Set roll number from Student
    ta.setSubject("Mathematics"); // Set subject from Teacher

    cout << "Teaching Assistant Details:" << endl;
    ta.display();

    return 0;
}

