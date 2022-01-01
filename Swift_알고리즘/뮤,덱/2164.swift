//
//  2164.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/28.
//

import Foundation

let count = Int(readLine()!)!
var queue = Array(1...count)
var state = 0

if count == 1{ print(1)}
else {
    while true{
        queue[state] = 0
        queue.append(queue[state+1])
        queue[state+1]=0
        if queue[queue.count-2] == 0{ print(queue.last!);
            break
        }
        state += 2
    }
}
