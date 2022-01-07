//
//  10816.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/06.
//

import Foundation
let N = Int(readLine()!)!
var firstArray = readLine()!.split(separator: " ").map(){Int(String($0))!}

let M = Int(readLine()!)
var secondArray = readLine()!.split(separator: " ").map(){Int(String($0))!}

var dict = [Int:Int]()
var result: [Int] = []

firstArray.sort()

for i in firstArray{
    if dict.keys.contains(i){
        dict[i]! += 1
    } else {
        dict[i] = 1
    }
}

for j in secondArray{
    if dict.keys.contains(j){
        result.append(dict[j]!)
    }else {
        result.append(0)
    }
}
print(result.map{String($0)}.joined(separator: " "))
