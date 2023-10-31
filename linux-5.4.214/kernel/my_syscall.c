#include <linux/syscalls.h>

SYSCALL_DEFINE0(mycall)
{       
        printk("Hello! This is 20181427_KimHyoYeon's kernel\n");
	printk("This is System Call Example!\n");
	printk("thank you :)\n");
        
        return 0;
}       

