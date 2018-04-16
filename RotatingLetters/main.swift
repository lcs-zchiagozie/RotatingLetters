//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT

// Loop forever until we get good input
var validInput = ""

prompt: while 1 == 1 {
    // Prompt the user
    print ("Input word is?")
    
    //Wait for input
    guard let givenInput = readLine() else {
        
        // If we got here, input is nil
        //Prompt again
        continue // continue with the next iteration of while loop
    }

    // Test #2: Is the input the correct length
    if givenInput.count < 1 || givenInput.count > 30 {
        
        // If we got here, input is short
        continue // prompt again
    }
    
    // Test #3: Check to ensure there is only UPPERCASE letters and no spaces
    checking: for individualCharacter in givenInput {

        // Debug: Print the character we are looking at
        print(individualCharacter)
        
        // Check the character
        switch individualCharacter {
        case "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "U", "R", "S", "T", "U", "V", "W", "X", "Y", "Z":
            continue checking
        default:
            continue prompt
        }

    }
    
    // If we got to this point, we know the input is good
    validInput = givenInput
    break // quit the while loop and begin process section
    
 

}

// PROCESS
for letter in validInput {
    // check each letter to make sure its IHOXSZN
    print(letter)
    if letter == "I" || letter == "H" || letter == "O" || letter == "X" || letter == "S" || letter == "Z" || letter == "N" {
        // good keep checking (continue loop)
        continue
    } else {
        print("NO")
}
// OUTPUT
// If we got here  guaranteed this is a word with only acceptable letter.
print("YES")

