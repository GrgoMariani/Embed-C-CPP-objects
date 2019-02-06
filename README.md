# Embed C/CPP objects
## Embed Files as Objects (C/C++)

A short example on how to embed files as objects so you can manipulate them inside of your C/C++ code

### Prerequisites
* C/C++ compiler (preferably GNU)
* make

### Compile example
 ```
 $ make
 $ main.exe
 ```
If you're under *NIX you can change the target inside the makefile to simply main.

### Explanation
Check makefile for compilation, and main.cpp for standard usage.
The embedObj.o target defines the symbols we want to create for the object.
E.g. : for setting the SYMBOL definition to _something_ it creates a symbol _something_ pointing to our embedded
file and _something_size_ showing how big it is.
