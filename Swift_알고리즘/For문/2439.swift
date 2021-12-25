//
//  2439.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/23.
//

import Foundation

let num = Int(readLine()!)!

for i in 1...num{
    for _ in stride(from: num, to: i, by: -1){
        print(" ",terminator: " ")
    }
    for _ in stride(from: 0, to: i, by: 1){
        print("*",terminator: " ")
    }
    print(" ")
}
