//
//  11650.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/04.
//

import Foundation

let num = Int(readLine()!)!
var arr : [(Int,Int)] = []

for _ in 1...num {
    let a = readLine()!.split(separator: " ").map{Int($0)!}
    arr.append((a[0] , a[1]))
}

arr.sort(by: {
    $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0
})

for x in 0..<num{
    print("\(arr[x].0) \(arr[x].1)")
}

