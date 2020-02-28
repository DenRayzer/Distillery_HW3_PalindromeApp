//
//  IOHelper.swift
//  PalindromeApp
//
//  Created by Elizaveta on 28.02.2020.
//  Copyright © 2020 Елизавета. All rights reserved.
//

import Foundation

enum MessageType {
    case Error
    case Message
}

class IOHelper {
    func input() -> String {
        return readLine() ?? ""
    }
    
    func output(_ outputMessage: String,_ messageType: MessageType) {
        switch messageType {
        case .Message:
            print(outputMessage)
        case .Error:
            fputs(outputMessage,stderr)
        }
    }
    
    func help() {
        print("""
        - To find palindromes enter the p command and your string from a new line
        - Enter h to to receive this message
        - Enter e to end program
        """)
    }
}
