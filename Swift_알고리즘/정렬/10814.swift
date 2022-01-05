//
//  10814.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/05.
//

import Foundation

let num = Int(readLine()!)!
var arr: [[String]] = []
for i in 0..<num{
    let input = readLine()!.split(separator: " ").map({String($0)})
    arr.append([input[0],input[1],"\(i+1)"])
}

arr = arr.sorted{ first, second in
    let firstAge = Int(first[0])!
    let secondAge = Int(second[0])!
    if firstAge == secondAge {
        return Int(first[2])! < Int(second[2])!
    } else {
        return firstAge < secondAge
    }
}
