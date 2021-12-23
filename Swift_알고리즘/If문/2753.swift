//
//  2753.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/22.
//

import Foundation

let inputArr = readLine()!.split(separator:" ")
let A = Int(inputArr[0])!

if A % 4 == 0 {
    print("1")
}
else if A % 100 != 0 && A % 400 == 0{
    print("1")
}
else{
    print("0")
}

