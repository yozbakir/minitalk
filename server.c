#include <stdio.h>
#include <signal.h>
#include <unistd.h>

void client(int pid, char *str);

int main(int argc, char **argv)
{
    int pid;
    char *str;

    if (argc != 3)
    {
        printf("Usage: %s <pid> <string>\n", argv[0]);
        return (1);
    }
    pid = getpid();
    str = argv[1];
    client(pid, str);
    return (0);
}