//
//  Q1.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/10.
//

/*
 Rotate array to right N times.
 https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
 
 For example, given

     A = [3, 8, 9, 7, 6]
     K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:

     [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
     [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
     [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]

 */

import Foundation

let K = Int(readLine()!)!
let A: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
func solution() -> [Int]{
    guard !A.isEmpty else {return []}
    guard K > 0 else { return A}
    var result = A
    for _ in 1...K{
        let last = result.last!
        result.insert(last, at: 0)
        result.remove(at: A.count)
    }
    return result
}

print(solution())
