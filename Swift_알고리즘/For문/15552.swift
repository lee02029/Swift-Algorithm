//
//  15552.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/05.
//

import Foundation

let num = Int(readLine()!)!
for _ in 1...num{
    let numberArr = readLine()!.split(separator: " ")
    let A = Int(numberArr[0])!
    let B = Int(numberArr[1])!
    print(A+B)
}

