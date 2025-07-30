#include <stdio.h>
#include <cs50.h>

string hello(void);

int main(void){
    printf("%s", hello());
}

string hello(void){
    return "hello, world";
}

