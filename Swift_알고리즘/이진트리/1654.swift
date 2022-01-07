//
//  1654.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/06.
//

import Foundation

func solution () -> Int{
    let firstline = readLine()!.split(separator: " ").map{Int($0)!}
    let k = firstline[0]
    let n = firstline[1]
    var lines = [Int]()
    for _ in 0..<k{
        lines.append(Int(readLine()!)!)
    }
    var first = 1
    var last = lines.max()!
    var result = 0
    while (first <= last){
        let mid = (first + last) / 2
        var temp = 0
        for line in lines{
            temp += line / mid
        }
        
        if temp >= n{
            if result < mid {
                result = mid
            }
            first = mid + 1
        } else {
            last = mid - 1
        }
    }
    return result
}
print(solution())
