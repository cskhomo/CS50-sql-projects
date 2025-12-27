#include <stdio.h>
#include <cs50.h>


void mario(int height);
int prompt_user(void);

int main(void){

    int height = prompt_user();
    mario(height);
}


void mario(int height){

    for (int i=0; i<height; i++){

        for (int j=height-i; j>1; j--){
            printf(" ");
        }

        for (int j=0; j<i+1; j++){
            printf("#");
        }

        printf("  ");

        for (int k=0; k<i+1; k++){
            printf("#");
        }

         printf("\n");
    }
}


int prompt_user(void){

    int height;

    do{
        height = get_int("Height: ");
    }
    while (height < 1);

    return height;
}
