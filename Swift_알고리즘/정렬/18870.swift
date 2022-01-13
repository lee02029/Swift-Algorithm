//
//  18870.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/13.
//

import Foundation

let num = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dict = [Int:Int]()
var next = 0
for i in arr.sorted() {
    if dict[i] == nil {
        dict[i] = next
        next += 1
    }
}
print("\(arr.map{String(dict[$0]!)}.joined(separator: " "))")

