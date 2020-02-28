//
//  main.swift
//  PalindromeApp
//
//  Created by Elizaveta on 26.02.2020.
//  Copyright © 2020 Elizaveta. All rights reserved.
//

import Foundation

let ioHelper = IOHelper()
ioHelper.help()
var response = ""
repeat {
    response = ioHelper.input()
    
    switch response {
    case "p":
        print("Enter your string")
        var s = ioHelper.input()
        if s == "" {
            ioHelper.output("There are no any String for PalindromeFinder", .Message)
        } else {
            PalindromeFinder().isPalindrome(s: &s)
            ioHelper.help()
        }
    case "h":
        ioHelper.help()
    default:
        ioHelper.output("Incorrect command \n", .Error)
        ioHelper.help()
    }
} while response != "e"

