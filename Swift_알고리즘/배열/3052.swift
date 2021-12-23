//
//  3052.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/23.
//

import Foundation

let currentTime = Date()

var numbers: [Int] = []
for _ in 1...10{
    numbers.append(Int(readLine()!)!%42)
}
let remove: Set = Set(numbers)
let result = Array(remove)
print(result.count)
print("실행 시간\(-currentTime.timeIntervalSinceNow)")

//Set 사용법
//swift는 라이브러리를 제공한다.(intersection:교집합 ,symmetricDifference:양쪽 여집합,union:교집합 ,
//subtracting:여집합)존재한다. 그외 추가:insert, 삭제:remove
