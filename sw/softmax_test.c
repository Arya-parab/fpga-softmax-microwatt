#include <stdint.h>
#include "console.h"

static void print_hex64(uint64_t v) {
    for (int i = 60; i >= 0; i -= 4) {
        uint8_t c = (v >> i) & 0xf;
        putchar(c >= 10 ? 'a' + c - 10 : '0' + c);
    }
}

int main(void) {
    uint64_t r3, r4;
    
    puts("=== SOFTMAX TEST START ===\n");
    __asm__ volatile(
        "lis   3, 0x0001\n\t"
	"lis   5, 0x0002\n\t"
	"sldi  5, 5, 32\n\t"
	"or    3, 3, 5\n\t"
	"lis   4, 0x0003\n\t"
	"lis   6, 0x0004\n\t"
	"sldi  6, 6, 32\n\t"
	"or    4, 4, 6\n\t"
	".long 0x58632000\n\t"
	"mr    %0, 3\n\t"
	"mr    %1, 4\n\t"
	: "=r"(r3), "=r"(r4)
	:
	: "r3", "r4", "r5", "r6"
    );
    puts("r3=0x"); print_hex64(r3); puts("\n");
    puts("r4=0x"); print_hex64(r4); puts("\n");
    puts("=== DONE ===\n");
    while(1);
    return 0;
}
