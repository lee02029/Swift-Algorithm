//
//  11021.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/22.
//

import Foundation

let input = Int(readLine()!)!

for i in 1...input {
    let inputArr = readLine()!.split(separator:" ")
    let A = Int(inputArr[0])!
    let B = Int(inputArr[1])!

    print("Case #\(i): \(A+B)")
}
