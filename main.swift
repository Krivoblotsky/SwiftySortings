//
//  main.swift
//  Sortings
//
//  Created by Sergii Kryvoblotskyi on 1/17/16.
//  Copyright © 2016 Home. All rights reserved.
//

import Foundation

// Input data

let array = [1, 6, 4, 2, 11, 9, 3, 7, 28, 36, 0, 13, 5, 10, 16]

// Insertion

let insertion = Insertion.sort(array)

print("Insertion: \(insertion)")

// Selection

let selection = Selection.sort(array)

print("Selection: \(selection)")

// Bubble

let bubble = Bubble.sort(array)

print("Bubble:    \(bubble)")

// Shell

let shell = Shell.sort(array)

print("Shell:     \(shell)")