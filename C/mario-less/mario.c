#include <stdio.h>
#include <cs50.h>


void mario(int height);

int main(void){

    int height;

    do{
        height = get_int("Height: ");
    }
    while (height < 0);

    mario(height);
}

void mario(int height){


    for (int i=0; i<height; i++){
        printf("*");

        // for (int j=0; j==i+1; j++){

            // printf("#");

            printf("\n");
        // }
    }
}
