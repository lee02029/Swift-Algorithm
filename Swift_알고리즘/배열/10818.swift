//
//  10818.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/23.
//

import Foundation

let currentTime = Date()
let num: Int = Int(readLine()!)!
let numbers: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
print(numbers.min()!,numbers.max()!)
print("실행 시간 : \(-currentTime.timeIntervalSinceNow)")

//swift에서 문자열을 나누어 배열에 넣는 방법으로 readLine()!.split(separator: " ")을 많이 사용하는데
//이것은 통상 사용하는 String.SubSequence인 타입인데 이것은 통상의 String과는 다른 타입을 가진다.
//SucSequence는 Collection타입에서 어떤 것의 부분을 (Subrange 또는 Slice)를 의미 하게 되는데
//배열 내부 각 요소의 타입을 map(_:)과 Int의 이니셜하이져를 통하여 Int 타입으로 변환할 떄
//String.SubSequence -> Int 보다 String.SubSequence -> String -> Int의 수행속도가 더 빠른 걸 확인가능

