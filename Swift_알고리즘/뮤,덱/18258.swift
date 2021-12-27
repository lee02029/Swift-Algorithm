//
//  18258.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/27.
//

import Foundation

let currentTime = Date()
let count = Int(readLine()!)!
var queue: Array<Int> = [Int]()
for _ in 0..<count{
    let input = readLine()!.split(separator: " ").map{String($0)}
    if input[0] == "push"{
        queue.append(Int(input[1])!)
    }else if input[0] == "front"{
        if queue.isEmpty {
            print(-1)
        }else {
            print(queue[0])
        }
    }else if input[0] == "back"{
        if queue.isEmpty{
            print(-1)
        }else {
            print(queue[queue.count-1])
        }
    }else if input[0] == "size"{
        print(queue.count)
    }else if input[0] == "pop"{
        if queue.isEmpty {
            print(-1)
        } else {
            print(queue.removeFirst())
        }
    }else if input[0] == "empty"{
        if queue.isEmpty {
            print(1)
        }else {
            print(0)
        }
    }
}
print("실행 시간 \(-currentTime.timeIntervalSinceNow)")
