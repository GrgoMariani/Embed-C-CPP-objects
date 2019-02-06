FILE_TO_EMBED := file_to_embed.txt
SYMBOL_TO_CREATE := e_obj
TARGET_EXE := main.exe

# Some compilers need _ prefix before the symbol
_PREFIX := _

all: $(TARGET_EXE)

clean:
	rm embedObj.o main.o

embedObj.o: embedObj.S
	gcc -Wall -c $< -DSYMBOL=$(_PREFIX)$(SYMBOL_TO_CREATE) -DINPUT_FILE='"$(FILE_TO_EMBED)"' -o $@

%.o: %.cpp
	g++ -Wall -std=c++11 -c $< -o $@

$(TARGET_EXE): embedObj.o main.o
	gcc -Wall -o $@ $^ -lstdc++
