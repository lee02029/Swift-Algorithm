//
//  FibanocciWithMemoization.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/19.
//

import Foundation

func fibNaive(_ n: Int) -> Int {
    print(n)
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    } else {
        return fibNaive(n - 1) + fibNaive(n - 2)
    }
}

print(fibNaive(20))

var memo = [Int: Int]()

func fib(_ n: Int) -> Int {
    if n == 0 {return 0}
    else if n == 1 { return 1}
    
    if let result = memo[n] { return result}
    
    memo[n] = fib(n-1) + fib(n-2)
    
    return memo[n]!
}

print(fib(22))
