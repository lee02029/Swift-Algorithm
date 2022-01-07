//
//  2805.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/06.
//

import Foundation

func solution () -> Int{
    let input = readLine()!.split(separator: " ").compactMap{Int(String($0))}
    let m = input[1]
    let trees = readLine()!.split(separator: " ").compactMap{Int(String($0))}
    var min = 0
    var max = trees.max()!
    var result = 0
    var temp = 0
    while (min < max){
        let mid = (min + max) / 2
        temp = trees.map { $0 > mid ? $0 - mid : 0 }.reduce(0, +)
        if(temp < m){
            max = mid
        } else {
            result = mid
            min = mid + 1
        }
        
    }
    return result
}
print(solution())
