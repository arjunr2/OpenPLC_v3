#include <stdio.h>
#include "ladder.h"

int main(int argc, char *argv[]) {
	printf("Hello start\n");
	config_init__();
	config_run__(500000);
	printf("Hello end\n");
}
