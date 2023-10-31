#include <stdio.h>
#include <sys/syscall.h>

int main(void)
{
	long ret = syscall(436);
	printf("20181427 KimHyoYeon\n");
	printf("System Call returned: %ld\n", ret);

	return 0;
}

