//
//  1316.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/25.
//

import Foundation

let num = Int(readLine()!)!
var nonGroup = 0

for _ in 0..<num{
    let line = readLine()!
    let lineArr = Array(line)
    var arr = [Character]()
    for i in 0..<lineArr.count{
        if arr.contains(lineArr[i]){
            if lineArr[i] == lineArr[i-1]{
            } else{
                nonGroup += 1
                break
            }
        } else {
            arr.append(lineArr[i])
        }
    }
}
print(num-nonGroup)
