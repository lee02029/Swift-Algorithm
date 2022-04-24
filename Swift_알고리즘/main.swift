//
//  main.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/23.
//

import Foundation

let input = readLine()!
let inputarr = input.split(separator:" ")
let A = Int(inputarr[0])!
let B = Int(inputarr[1])!

if A > B{
    print(">")
}
    
else if A < B{
    print("<")
}
    
else if A == B{
    print("==")
}
