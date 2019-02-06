#define PASTE(x,y) x##y
#define EVALUATOR(x,y) PASTE(x,y)
#define SIZE(x) EVALUATOR(x,_size)
    .global SYMBOL
    .global SIZE(SYMBOL)
    .section .rodata
SYMBOL:
    .incbin INPUT_FILE
1:
SIZE(SYMBOL):
    .int 1b - SYMBOL
