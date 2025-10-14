#include <iostream>
using namespace std;

class Person {
public:
    string name;
    void setName(string n) { name = n; }
};

class Student : public Person {
public:
    int rollNumber;
    void setRoll(int r) { rollNumber = r; }
};

class Result : public Student {
public:
    int marks;
    void setMarks(int m) { marks = m; }
    void display() {
        cout << "Name: " << name << ", Roll: " << rollNumber << ", Marks: " << marks << endl;
    }
};

int main() {
    Result r1;
    r1.setName("Amit");
    r1.setRoll(101);
    r1.setMarks(88);
    r1.display();
    return 0;
}

