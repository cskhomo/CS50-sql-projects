#include <stdio.h>
#include <cs50.h>


void mario(int height);
int prompt_user(void);

int main(void){

    int height = prompt_user();
    mario(height);
}

void mario(int height){

    printf("%d\n",height);
    return;


    for (int i=0; i<height; i++){
        printf("*");

        // for (int j=0; j==i+1; j++){

            // printf("#");

            printf("\n");
        // }
    }
}

int prompt_user(void){

    int height;

    do{
        height = get_int("Height: ");
    }
    while (height < 0);

    return height;
}
