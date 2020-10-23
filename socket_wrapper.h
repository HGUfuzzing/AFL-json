#include <stdio.h>
#include <stdlib.h> //for atoi()
#include <string.h> // for memset() 등
#include <unistd.h> //sockadd_in, read, write 등
#include <arpa/inet.h> //htonol, htons, INDDR_ANY, sockaddr_in 등
#include <sys/socket.h>
#include <signal.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <netdb.h>
#include <errno.h>



#define BUF_SIZE 1024

void error_handling(char *message);
pid_t my_popen(const char *command, int *read_fd);
int send_file(int socket, const char * filename);
int recv_file(int socket, const char * filename);


int Socket(int domain, int type, int protocol);
int Bind(int sockfd, struct sockaddr *myaddr, socklen_t addlen);
int Listen(int s, int backlog);
int Accept(int s, struct sockaddr * addr, socklen_t * addrlen);