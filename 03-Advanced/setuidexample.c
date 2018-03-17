#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(){
	seteuid(0);
	system("cat /home/jean/protected/logs/day_1.txt");
	return 0;
}
