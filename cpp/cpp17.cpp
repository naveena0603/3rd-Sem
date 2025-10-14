#include <iostream>
using namespace std;

class Student {
public:
    string name;
    void setName(string n) { name = n; }
};

class Marks {
public:
    int marks;
    void setMarks(int m) { marks = m; }
};

// Derived class inheriting from two base classes
class Result : public Student, public Marks {
public:
    void display() {
        cout << "Name: " << name << ", Marks: " << marks << endl;
    }
};

int main() {
    Result r1;
    r1.setName("Priya");
    r1.setMarks(95);
    r1.display();
    return 0;
}

