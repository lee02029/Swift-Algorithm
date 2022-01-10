//
//  big0.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/10.
//

import Foundation

//Constant time O(1)
func constantTime(_ n: Int) -> Int{
    let result = n * n
    return result
}

// Linear Time O(n)
func linearTime(_ A: [Int]) -> [Int]{
    for i in 0..<A.count {
        if A[i] == 0{
            return 0
        }
        print(i)
    }
    return 1
}

// O(log n)
func logarithmicTime(_ N: Int) -> Int {
    var n = N
    var result = 0
    while n > 1 {
        n /= 2
//        print(n)
        result += 1
    }
    return result
}
logarithmicTime(128)

// Quadratic time O(n^2)
func quadratic(_ n: Int) -> Int {
    var result = 0
    for i in 0..<n {
        for j in i..<n {
            result += 1
//            print("\(i) \(j)")
        }
    }
    return result
}
quadratic(16)

var arr = [1, 2, 3]
arr.append(4)

var set = Set<Int>()
set.count
