//
//  10870.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/25.
//

import Foundation

var num = Int(readLine()!)!
func fibo(x: Int)-> Int{
    if x==0{
        return 0
    } else if x == 1{
        return 1
    }
    var result = fibo(x: x-1)+fibo(x: x-2)
    return result
}

print(fibo(x: num))
