#include <stdio.h>
#include <cs50.h>

string hello(void);

int main(void){
    printf("%s\n", hello());
}

string hello(void){

    static char message[20];

    string name = get_string("What's your name? ");
    snprintf(message, sizeof(message), "hello, %s", name);

    return message;
}

