//
//  10828.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/26.
//

import Foundation

let count = Int(readLine()!)!
var stack: Array<Int> = [Int]()
for _ in 0..<count {
    let input = readLine()!.split(separator: " ").map{String($0)}
    if input[0] == "push"{
        stack.append(Int(input[1])!)
    } else if input[0] == "top" {
        if stack.isEmpty {
            print(-1)
        } else {
            print(stack[stack.count-1])
        }
    }
    else if input[0] == "size" {
        print(stack.count)
    } else if input[0] == "pop" {
        if stack.isEmpty {
            print(-1)
        }
        else {
            print(stack.removeLast())
        }
    }
    else if input[0] == "empty" {
        if stack.isEmpty {
            print(1)
        } else {
            print(0)
        }
    }
}
