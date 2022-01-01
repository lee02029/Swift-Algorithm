//
//  2108.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/01.
//

import Foundation

let n = Int(readLine()!)!
var list: [Int] = []
var average: Double = 0.0
var sum = 0
var dict = [Int:Int]()

for _ in 1...n{
    let num = Int(readLine()!)!
    list.append(num)
    dict[num,default:0] += 1
}

//산술평균
for i in 0..<list.count{
    sum += list[i]
}
average = (Double(sum) / Double(list.count))
print("\(Int(round(average)))")

//중앙값
list.sort()
print("\(list[((list.count/2))])")

//최빈값
let maxValue = dict.max(by: {$0.value < $1.value})!.value
var mode = dict.filter({ $0.value == maxValue}).keys.sorted()
if mode.count > 1 {
    print("\(mode[1])")
}else {
    print("\(mode[0])")
}

//범위
print("\(list.max()! - list.min()!)")
