//
//  main.m
//  Assignment3
//
//  Created by Hemant V. Torsekar on 2015-04-07.
//  Copyright (c) 2015 Hemant V. Torsekar. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // Constants
        double const pi = 3.14159;
//      pi = 42001.0;
        
        // Arithmetic
        NSLog(@"6 + 2 = %d",  6 + 2);    // 8
        NSLog(@"6 - 2 = %d",  6 - 2);    // 4
        NSLog(@"6 * 2 = %d",  6 * 2);    // 12
        NSLog(@"6 / 2 = %d",  6 / 2);    // 3
        NSLog(@"6 %% 2 = %d", 6 % 2);    // 0
        
        // Arithmetic Increment/Decrement
        int i = 0;
        NSLog(@"%d", i);    // 0
        i--;
        NSLog(@"%d", i);    // 1
        i--;
        NSLog(@"%d", i);    // 2
        
        // Operator Description
        
//        a == b  Equal to
//        a != b  Not equal to
//        a > b   Greater than
//        a >= b  Greater than or equal to
//        a < b   Less than
//        a <= b  Less than or equal to
//        !a  Logical negation
//        a && b  Logical and
//        a || b  Logical or
        
        // Operator Description Switch
        int modelYear = 1988;
        switch (modelYear) {
            case 1987:
                NSLog(@"Your car is from 1987.");
                break;
            case 1988:
                NSLog(@"Your car is from 1988.");
                break;
            case 1989:
            case 1990:
                NSLog(@"Your car is from 1989 or 1990.");
                break;
            default:
                NSLog(@"I have no idea when your car was made.");
                break;
        }

        // While loops
        
        int carYear = 1990;
        int j = 0;
        while (j<5) {
            if (j == 3) {
                NSLog(@"Aborting the while-loop");
                break;
            }
            NSLog(@"Current year: %d", carYear + j);
            j++;
        }
        
        // For loops
        
        for (int k=0; k<5; k++) {
            if (k == 3) {
                NSLog(@"Skipping a for-loop iteration");
                continue;
            }
            NSLog(@"Current year: %d", carYear + k);
        }
        
        // For in loops (Objective-C specific
        
        NSArray *models = @[@"Ford", @"Honda", @"Nissan", @"Porsche"];
        for (id model in models) {
            NSLog(@"%@", model);
        }
        
        // Macros (Rad to Degrees)
        
        #define PI 3.14159
        #define RAD_TO_DEG(radians) (radians * (180.0 / PI))
        
        double angle = PI / 2;              // 1.570795
        NSLog(@"%f", RAD_TO_DEG(angle));
        
        
        // Typedef
        
        typedef unsigned char ColorComponent;

        ColorComponent red = 255;
        ColorComponent green = 160;
        ColorComponent blue = 0;
        NSLog(@"Your paint job is (R: %hhu, G: %hhu, B: %hhu)",
              red, green, blue);
        
        // Structs
        
        typedef struct {
            unsigned char red;
            unsigned char green;
            unsigned char blue;
        } Color;
        
        Color carColor = {205, 160, 20};
        NSLog(@"Your paint job is (R: %hhu, G: %hhu, B: %hhu)",
              carColor.red, carColor.green, carColor.blue);
        
        // Enums
        
        typedef enum {
            FORD,
            HONDA,
            NISSAN,
            PORSCHE
        } CarModel;
        
        CarModel myCar = NISSAN;
        switch (myCar) {
            case FORD:
            case PORSCHE:
                NSLog(@"You like Western cars?");
                break;
            case HONDA:
            case NISSAN:
                NSLog(@"You like Japanese cars?");
                break;
            default:
                break;
        }
        
        // Primitive Arrays
        int years[4] = {1968, 1970, 1989, 1999};
        years[0] = 1967;
        for (int i=0; i<4; i++) {
            NSLog(@"The year at index %d is: %d", i, years[i]);
        }
        
        // Pointers
        
        int year = 1967;          // Define a normal variable
        int *pointer;             // Declare a pointer that points to an int
        pointer = &year;          // Find the memory address of the variable
        NSLog(@"%d", *pointer);   // Dereference the address to get its value
        *pointer = 1990;          // Assign a new value to the memory address
        NSLog(@"%d", year);
        
        // The Utility of Pointers
        
        char model[6] = {'H', 'e', 'm', 'a', 'n', 't'};
        char *modelPointer = &model[0];
        for (int i=0; i<6; i++) {
            NSLog(@"Value at memory address %p is %c",
                  modelPointer, *modelPointer);
            modelPointer++;
        }
        NSLog(@"The first letter is %c", *(modelPointer - 6));
        
        // The Null Pointer
        
        int year1 = 1967;
        int *pointer1 = &year;
        NSLog(@"%d", *pointer1);    // Do something with the value
        pointer1 = NULL;            // Then invalidate it
        
//        // Void Pointers
//        - (id)initWithBytes:(const void *)bytes
//    length:(NSUInteger)length
//    encoding:(NSStringEncoding)encoding

        // Pointers in Objective-C
        NSString *model1 = @"Honda";
        
        NSString *anObject;    // An Objective-C object
        anObject = NULL;       // This will work
        anObject = nil;        // But this is preferred
        int *aPointer;         // A plain old C pointer
        aPointer = nil;        // Don't do this
        aPointer = NULL;       // Do this instead
        
        // Assignment # 3 - Part 2
        // Application to display result of 87-15
        
        int a = 87;
        int b = 15;
        int c = a - b;
        NSLog(@"The result of subtracting the value of 15 from 87 is : %d",c);
        
        // Assignment # 3 - Part 3
        
        // the type of the primitive, sum, should be declared in lowercase
        int sum;
        // computer results
        sum = 25 + 37 - 19;
        // display results
        NSLog (@"The answer is %i", sum);
        
        // Assignment # 3 - Part 4
        
        int answer, result;
        answer = 100;
        result = answer - 10;
        NSLog (@"The result is %i\n", result + 5);
    }
    return 0;

}
