#include <signal.h>
#include <unistd.h>

void    client(int pid, char *str)
{
    int i;
    int j;

    i = 0;
    while (str[i])
    {
        j = 0;
        while (j < 8)
        {
            if (str[i] & (1 << j))
                kill(pid, SIGUSR1);
            else
                kill(pid, SIGUSR2);
            j++;
            usleep(100);
        }
        i++;
    }
}