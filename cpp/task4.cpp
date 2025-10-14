#include <iostream>
using namespace std;

class Book {
private:
    string isbn;
    int copiesAvailable;

public:
    string title;
    string author;

    Book(string t, string a, string i, int copies) {
        title = t;
        author = a;
        isbn = i;
        copiesAvailable = copies;
    }

    void issueBook() {
        if (copiesAvailable > 0) {
            copiesAvailable--;
            cout << "Book issued successfully." << endl;
        } else {
            cout << "No copies available to issue." << endl;
        }
    }

    void addCopies(int n) {
        if (n > 0) {
            copiesAvailable += n;
        }
    }

    void displayDetails() {
        cout << "Title: " << title << endl;
        cout << "Author: " << author << endl;
        cout << "ISBN: " << isbn << endl;
        cout << "Copies Available: " << copiesAvailable << endl;
    }
};

int main() {
    Book b1("The Alchemist", "Paulo Coelho", "9780061122415", 3);

    b1.displayDetails();

    b1.issueBook();
    b1.issueBook();
    b1.issueBook();
    b1.issueBook();

    b1.addCopies(2);

    cout << "\nAfter Updates:\n";
    b1.displayDetails();

    return 0;
}
