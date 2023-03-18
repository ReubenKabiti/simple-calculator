# simple calculator
A very simple calculator made using lex and yacc.
# Build
### linux

Install the required packages

``` sh
sudo apt update
sudo apt install make yacc flex
```

Build the project

``` sh
make
```
### Mac

Follow instructions on how to install yacc and flex on your Mac

When you are done, run

``` sh
make
```

# Run
An executable named calc will be produced. On both Mac and Linux, run ./calc

To use the calculator, you can either run it, enter your expression, Enter/Return the press Ctrl+D. Or better

``` sh
echo "<expression>" | ./calc
# e.g.
echo "3 + (2 - 5(4 + 1)) " | ./calc
```
