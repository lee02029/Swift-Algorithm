//
//  11729.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/26.
//

import Foundation

let N = Int(readLine()!)!

func hanoi(_ n: Int,_ from: Int,_ to:Int,_ aux:Int){
    if n == 1 {
        print("\(from) \(to)")
    }
    else{
        hanoi(n-1,from,aux,to)
        print("\(from) \(to)")
        hanoi(n-1,aux,to,from)
    }
}
print(pow(2,N)-1)
hanoi(N,1,3,2)
