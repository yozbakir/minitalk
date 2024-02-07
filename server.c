#include <stdio.h>
#include <signal.h>
#include <unistd.h>


int main(void)
{
    int pid = getpid();
    printf("SERVER PID: [%d]\n", pid);
}