#include <stdio.h>
#include <cs50.h>


void mario(int height);

int main(void){

    int height = get_int("Height: ");
    mario(height);
}

void mario(int height){

    for (int i=0; i<height; i++){
        printf("#");
    }
}
