program calculator
    implicit none
    integer :: choice
    real :: num1, num2, result

    print *, "Select operation:"
    print *, "1. Add"
    print *, "2. Subtract"
    print *, "3. Multiply"
    print *, "4. Divide"

    print *, "Enter choice (1/2/3/4):"
    read *, choice
    print *, "Enter first number:"
    read *, num1
    print *, "Enter second number:"
    read *, num2

    if (choice == 1) then
        result = num1 + num2
        print *, num1, " + ", num2, " = ", result
    elseif (choice == 2) then
        result = num1 - num2
        print *, num1, " - ", num2, " = ", result
    elseif (choice == 3) then
        result = num1 * num2
        print *, num1, " * ", num2, " = ", result
    elseif (choice == 4) then
        if (num2 == 0.0) then
            print *, "Error! Division by zero."
        else
            result = num1 / num2
            print *, num1, " / ", num2, " = ", result
        endif
    else
        print *, "Invalid input. Please select a valid operation."
    endif
end program calculator
