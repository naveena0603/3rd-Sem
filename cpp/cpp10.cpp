#include <iostream>
using namespace std;

// Function with default arguments
void displayDetails(string name, int age = 18, string city = "Unknown") {
    cout << "Name: " << name << endl;
    cout << "Age: " << age << endl;
    cout << "City: " << city << endl;
    cout << "--------------------------" << endl;
}

int main() {
    // Call with all arguments
    displayDetails("Rahul", 20, "Mumbai");

    // Call with two arguments (city will take default value)
    displayDetails("Priya", 22);

    // Call with one argument (age and city will take default values)
    displayDetails("Amit");

    return 0;
}

