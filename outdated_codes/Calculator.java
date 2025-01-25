import java.util.Scanner;

public class Calculator {

    public static double add(double a, double b) {
        return a + b;
    }

    public static double subtract(double a, double b) {
        return a - b;
    }

    public static double multiply(double a, double b) {
        return a * b;
    }

    public static double divide(double a, double b) throws IllegalArgumentException {
        if (b == 0) {
            throw new IllegalArgumentException("Division by zero is not allowed.");
        }
        return a / b;
    }

    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            boolean exit = false;
            
            System.out.println("Welcome to the Calculator!");
            
            while (!exit) {
                System.out.println("\nSelect an operation:");
                System.out.println("1. Addition (+)");
                System.out.println("2. Subtraction (-)");
                System.out.println("3. Multiplication (*)");
                System.out.println("4. Division (/)");
                System.out.println("5. Exit");
                
                System.out.print("Enter your choice (1-5): ");
                int choice = scanner.nextInt();
                
                if (choice == 5) {
                    System.out.println("Exiting the Calculator. Goodbye!");
                    break;
                }
                
                // Input numbers
                System.out.print("Enter the first number: ");
                double num1 = scanner.nextDouble();
                
                System.out.print("Enter the second number: ");
                double num2 = scanner.nextDouble();
                
                // Perform the operation
                switch (choice) {
                    case 1 -> System.out.println("Result: " + add(num1, num2));
                    case 2 -> System.out.println("Result: " + subtract(num1, num2));
                    case 3 -> System.out.println("Result: " + multiply(num1, num2));
                    case 4 -> {
                        try {
                            System.out.println("Result: " + divide(num1, num2));
                        } catch (IllegalArgumentException e) {
                            System.out.println("Error: " + e.getMessage());
                        }
                    }
                    default -> System.out.println("Invalid choice. Please select a valid option.");
                }
            }
        }
    }
}
