//
//  1874.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/27.
//

import Foundation
let n = Int(readLine()!)!

var count = 1
var stack: [Int] = []
var answer: [String] = []

for _ in 0..<n {
    let num = Int(readLine()!)!
    
    while count <= num {
        stack.append(count)
        answer.append("+")
        count += 1
    }
    
    if stack.last == num{
        stack.popLast()
        answer.append("-")
    } else {
        print("NO")
        exit(0)
    }
}

print(answer.joined(separator: "\n"))
