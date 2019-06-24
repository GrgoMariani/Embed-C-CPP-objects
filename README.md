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
If you're under *NIX you can change the target inside the __makefile__ to simply main.

### Explanation
Check makefile for compilation, and main.cpp for standard usage.
The embedObj.o target defines the symbols we want to create for the object.

E.g. : for setting the SYMBOL definition to _something_ it creates a symbol `something` pointing to our embedded
file and `something_size` showing how big it is.

Use char array for symbol `something` while `something_size` should be of type __int__ (since __size_t__ can sometimes be different length than __int__ on some platforms)
