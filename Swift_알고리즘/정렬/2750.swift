//
//  2750.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/01.
//

import Foundation

let num = Int(readLine()!)!
var numbers: [Int] = []

for _ in 1...num{
    numbers.append(Int(readLine()!)!)
}

numbers.sort()

for i in numbers{
    print(i)
}
