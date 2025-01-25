use strict;
use warnings;

sub add {
    return $_[0] + $_[1];
}

sub subtract {
    return $_[0] - $_[1];
}

sub multiply {
    return $_[0] * $_[1];
}

sub divide {
    if ($_[1] == 0) {
        return "Error! Division by zero.";
    } else {
        return $_[0] / $_[1];
    }
}

print "Simple Perl Calculator\n";
print "Select operation:\n";
print "1. Add\n";
print "2. Subtract\n";
print "3. Multiply\n";
print "4. Divide\n";

print "Enter choice (1/2/3/4): ";
my $choice = <STDIN>;
chomp($choice);
print "Enter first number: ";
my $num1 = <STDIN>;
chomp($num1);
print "Enter second number: ";
my $num2 = <STDIN>;
chomp($num2);

if ($choice == 1) {
    print "$num1 + $num2 = ", add($num1, $num2), "\n";
} elsif ($choice == 2) {
    print "$num1 - $num2 = ", subtract($num1, $num2), "\n";
} elsif ($choice == 3) {
    print "$num1 * $num2 = ", multiply($num1, $num2), "\n";
} elsif ($choice == 4) {
    print "$num1 / $num2 = ", divide($num1, $num2), "\n";
} else {
    print "Invalid input. Please select a valid operation.\n";
}
