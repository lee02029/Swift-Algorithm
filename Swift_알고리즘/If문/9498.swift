//
//  9498.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/22.
//

import Foundation

let inputArr = readLine()!.split(separator:" ")
let A = Int(inputArr[0])!

if A >= 90 && A <= 100 {
    print("A")
}
else if A >= 80 && A <= 89 {
    print("B")
}
else if A >= 70 && A <= 79{
    print("C")
}
else if A >= 60 && A <= 69{
    print("D")
}
else{
    print("F")
}
