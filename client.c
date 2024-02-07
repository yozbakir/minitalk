#include <stdio.h>
#include <unistd.h>
#include <signal.h>

void client(int pid, char *str)
{}

int main(int argc, char *argv[])
{
    int pid = getpid();
    printf("CLIENT PID: [%d]\n", pid);
    client(pid, argv[1]);
    return 0;
}