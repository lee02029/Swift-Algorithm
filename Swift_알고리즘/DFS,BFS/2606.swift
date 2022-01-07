//
//  2606.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/07.
//

import Foundation

func solution() -> Int{
    let comNum = Int(readLine()!)!
    let networkNum = Int(readLine()!)!
    var network = [Int:[Int]]()
    for num in 1...comNum{
        network[num] = []
    }
    for _ in 0..<networkNum{
        let temp = readLine()!.split(separator: " ").map{Int($0)!}
        network[temp[0]]?.append(temp[1])
        network[temp[1]]?.append(temp[0])
    }
    var visited: [Int] = []
    var stack: [Int] = [1]
    while stack.count != 0{
        guard let temp = stack.popLast() else { fatalError()}
                if !visited.contains(temp){
                    visited.append(temp)
                    guard let temp2 = network[temp] else {fatalError()}
                    stack += temp2
                }
    }
    return visited.count - 1
}
print(solution())
