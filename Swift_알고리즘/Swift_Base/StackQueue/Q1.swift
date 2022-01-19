//
//  Q1.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/19.
//

import Foundation

func solutionQueueLeft(A: [Int], K: Int) -> [Int] {
    guard !A.isEmpty else {return []}
    guard K > 0 else { return A }
    var result = A
    
    for _ in 1...K {
        let first = result.first!
        result.append(first)
        result.remove(at: 0)
    }
    return result
}
print(solutionQueueLeft(A: [1, 2, 3, 4, 5], K: 1)) // [2, 3, 4, 5, 1]
print(solutionQueueLeft(A: [1, 2, 3, 4, 5], K: 2)) // [3, 4, 5, 1, 2]
print(solutionQueueLeft(A: [1, 2, 3, 4, 5], K: 3)) // [4, 5, 1, 2, 3]

print(solutionQueueLeft(A: [3, 8, 9, 7, 6], K: 3)) // [7, 6, 3, 8, 9]
