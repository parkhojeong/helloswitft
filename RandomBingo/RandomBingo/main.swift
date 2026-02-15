//
//  main.swift
//  RandomBingo
//
//  Created by hj on 2/15/26.
//

import Foundation

let random = Int.random(in: 1...100)
var choice = -1

while choice != random {
    print("Guess a number between 1 and 100:")
    choice = Int(readLine() ?? "0") ?? -1
    
    if choice < random {
        print("up")
    } else if choice > random {
        print("down")
    }
}

print("congratulations!")
