//
//  MaxRun.swift
//
//  Created by Jenoe Balote
//  Created on 2021-12-09
//  Version 1.0
//  Copyright (c) 2021 Jenoe Balote. All rights reserved.
//
//  This program determines the max run of characters in an inputted string.
//

import Foundation

// This function calculates the max run.
func maxRun(usrInput: String) -> Int {

    var count = 0
    var maxCount = 0
    var previous: Character = " "

    // Finds most reoccurring character in the string.
    // Turns string into an array of characters.
    for character in Array(usrInput) {
        if character == previous {
            count += 1
        } else {
            count = 1
            previous = character
        }

        if count > maxCount {
            maxCount = count
        }
    }

    return maxCount
}

print("This program calculates the max run of a string.")

// Input
print("\nEnter a string: ", terminator: "")
let usrInput = readLine()!

// Calls maxRun function
let maxRunValue = maxRun(usrInput: usrInput)
// Output
print("The Max Run of \(usrInput) is: \(maxRunValue)")

print("\nDone.")
