//
//  10773.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/27.
//

import Foundation

let count = Int(readLine()!)!
var stack: Array<Int> = [Int]()
var result = 0
for _ in 0..<count{
    let input = Int(readLine()!)!
    if input != 0 {stack.append(input)}
    else{stack.removeLast()}
}

for i in stack{
    result += i
}

print(result)
