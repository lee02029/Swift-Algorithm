//
//  Q2.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/19.
//

/*
 Giving a String, write a function that reserves the String
 using a stack.
 */

import Foundation

func solution(_ text: String) -> String {
    var chars = Array(text)
    var result = [String]()
    for c in chars {
        result.append(String(c))
    }
    for i in 0..<result.count{
        chars[i] = Character(result.popLast()!)
    }
    return String(chars)
}

print(solution("abc")) // bca
print(solution("Would you like to play a game?"))
