//
//  PalindromeFinder.swift
//  PalindromeApp
//
//  Created by Elizaveta on 28.02.2020.
//  Copyright © 2020 Elizaveta. All rights reserved.
//

import Foundation

class PalindromeFinder {
    func isPalindrome(s : inout String) {
        let arr = s.split(separator: " ")
        var s1:String = ""
        
        for i in 0..<arr.count {
            s1 += arr[i]
            if String(s1.reversed())==s1 {
                print(s1)
            }
        }
        
        if(arr.count>1) {
            let endRemoveIndex = s.index(s.startIndex, offsetBy: arr[0].count)
            s.removeSubrange(s.startIndex...endRemoveIndex)
            isPalindrome(s: &s)
        }
    }
}
