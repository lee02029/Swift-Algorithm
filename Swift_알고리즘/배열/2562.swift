//
//  2562.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/23.
//

import Foundation

let currentTime = Date()

var numbers: [Int] = []
for _ in stride(from: 0, to: 9, by: 1){
    numbers.append(Int(readLine()!)!)
}


print(numbers.max()!)
print(numbers.min()!)
print("실행 시간 : \(-currentTime.timeIntervalSinceNow)")
//for문으로 사용가능한것 : stride(from:, to:, by: ), ... ,name
