#include <iostream>
using namespace std;

class student {
    private:
     int rollno;
     int marks;
    public:
    string name;
    string branch;
    //constructor
    student(string n, string b, int r, int m) {
        name = n;
        branch = b;
        rollno = r;            
        marks = m;
    }
     //setters
    void setmarks(int mar) {                
        marks=mar;
    }
    //getters
    int getmarks() {
        return marks;
    }
    void displayDetails() {
        cout << "Name: " << name << endl;
        cout << "Branch: " << branch << endl;
        cout << "Roll No: " << rollno << endl;
        cout << "Marks: " << marks << "%" << endl;
    }
};
int main() {
    student s1("hasini","AIML",223,90);
    s1.setmarks(95);
    s1.displayDetails();
}