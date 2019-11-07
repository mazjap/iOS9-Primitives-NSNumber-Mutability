//
//  main.m
//  Pointers
//
//  Created by Jordan Christensen on 11/8/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import <Foundation/Foundation.h>

void cStringExersize();

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("Here's Johnny\n");
        
        float piFloat = 3.14159265359;
        double piDouble = 3.14159265359;
        
        printf("piFloat: %.6f\n", piFloat);
        printf("piDouble: %.10f\n", piDouble);
        
        long value = 42;
        printf("value: %ld\n", value);
        
        long *addressOfValue = &value;
        printf("address of value: %p\n", addressOfValue);
        printf("&address of value: %p\n", &addressOfValue);
        printf("value of value from address: %li\n", *addressOfValue);
        
        char *str = "Hello, World!";
        
        printf("str addr: %p\n", &str);
        printf("str value: %s\n", str);
        
        char letter5 = str[4];
        printf("letter5: %c", letter5);
        
        cStringExersize();
    }
    return 0;
}

void cStringExersize() {
    char *message = "Hello xxxxxxxxxxxxxxxxxxxx!"; // '\0' = null terminated

    printf("message pointer: %p\n", message);
    printf("message: %s\n", message);

    unsigned long length = strlen(message);
    printf("Please allocate a string of size: %zu\n", sizeof(char) * length + 1);
    char *ptr = malloc(sizeof(char) * length + 1);    // memory allocation
    ptr = strcpy(ptr, message);

    char *myName = "Jordan Christensen";

    for (int i=6; i<length; i++) {
        if (i-6 < strlen(myName)) {
            ptr[i] = myName[i-6];
        } else if (ptr[i] == 'x') {
            ptr[i] = '\0';
        }
    }

    printf("message: %s\n", ptr);

    // Expected: message: Hello Paul!    // No x's!
    
    free(ptr);
}
