//
//  1181.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/04.
//

import Foundation

let num = Int(readLine()!)!
var arr : [(Int,String)] = []
var tmp = ""

for _ in 1...num {
    let str = readLine()!
    arr.append((str.count,str))
}
arr.sort(by: <)
for (x,y) in arr{
    if tmp == y{continue}
    tmp = y
    print(y)
}
