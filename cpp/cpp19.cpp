#include <iostream>
using namespace std;

// Base class
class Person {
public:
    string name;
    void setName(string n) { name = n; }
};

// First derived class
class Student : public Person {
public:
    int roll;
    void setRoll(int r) { roll = r; }
};

// Second derived class (multiple inheritance)
class Marks {
public:
    int marks;
    void setMarks(int m) { marks = m; }
};

// Hybrid derived class inheriting from Student and Marks
class Result : public Student, public Marks {
public:
    void display() {
        cout << "Name: " << name << ", Roll: " << roll << ", Marks: " << marks << endl;
    }
};

int main() {
    Result r1;
    r1.setName("Priya");
    r1.setRoll(102);
    r1.setMarks(98);
    r1.display();
    return 0;
}

