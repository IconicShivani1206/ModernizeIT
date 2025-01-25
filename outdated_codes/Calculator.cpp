#include <iostream>
using namespace std;

float add(float x, float y) {
    return x + y;
}

float subtract(float x, float y) {
    return x - y;
}

float multiply(float x, float y) {
    return x * y;
}

float divide(float x, float y) {
    if (y == 0) {
        return -1;
    } else {
        return x / y;
    }
}

int main() {
    int choice;
    float num1, num2;

    cout << "Simple C++ Calculator" << endl;
    cout << "Select operation:" << endl;
    cout << "1. Add" << endl;
    cout << "2. Subtract" << endl;
    cout << "3. Multiply" << endl;
    cout << "4. Divide" << endl;

    cout << "Enter choice (1/2/3/4): ";
    cin >> choice;
    cout << "Enter first number: ";
    cin >> num1;
    cout << "Enter second number: ";
    cin >> num2;

    if (choice == 1) {
        cout << num1 << " + " << num2 << " = " << add(num1, num2) << endl;
    } else if (choice == 2) {
        cout << num1 << " - " << num2 << " = " << subtract(num1, num2) << endl;
    } else if (choice == 3) {
        cout << num1 << " * " << num2 << " = " << multiply(num1, num2) << endl;
    } else if (choice == 4) {
        if (num2 == 0) {
            cout << "Error! Division by zero." << endl;
        } else {
            cout << num1 << " / " << num2 << " = " << divide(num1, num2) << endl;
        }
    } else {
        cout << "Invalid input. Please select a valid operation." << endl;
    }

    return 0;
}
