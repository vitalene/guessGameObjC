//
//  main.m
//  guessGameObjC
//
//  Created by Neil Vitale on 8/15/16.
//  Copyright © 2016 Neil Vitale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int numberOfItemsScanned = -1;
        char nameAsCString[100] = {'\0'};
        int randomNumber = arc4random_uniform(6) +1;
        int exitCode = -1;
        int userGuess = -1;
        int guessedNumbers[3] = {'\0','\0','\0'};
        NSLog(@"Hello.  What is your name?:  ");
        numberOfItemsScanned = scanf("%s", nameAsCString);
        NSString *userName = @(nameAsCString);
        
        NSLog(@"Hello, %@.  I'm rolling a die.  Can you guess its number?\n", userName);
        int counter = 0;
        while (counter < 3) {
            
            switch (counter) {
                case 0:
                    printf("%dst guess  :\n", (counter + 1));
                    break;
                case 1:
                    printf("%dnd guess  :\n", (counter + 1));
                    break;
                case 2:
                    printf("%drd guess  :\n", (counter + 1));
                    break;
                    
                default:
                    break;
            }
            
            exitCode = scanf("%d", &userGuess);
            if (userGuess != randomNumber) {
                NSLog(@"You guessed %d.  Sorry that's wrong.\n", userGuess);
                
            } else {
                NSLog(@"Yes!  %d is right!\n", userGuess);
                
            }
            // NSArray *guessedNumbers[counter] = @(randomNumber);
            guessedNumbers[counter] = randomNumber;
            randomNumber = arc4random_uniform(6) +1;
            counter++;
        }
        
        for (int i=0; i <3; i++) {
            if (i==0) {
                NSLog(@"The first number was: %i", guessedNumbers[i]);
            }
            if (i==1) {
                NSLog(@"The second number was: %i", guessedNumbers[i]);
            }
            if (i==2) {
                NSLog(@"The third number was: %i", guessedNumbers[i]);
                
            }
            
            
        }
        return 0;
    }}
