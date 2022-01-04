//
//  1427.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/04.
//

import Foundation

let n = readLine()!

for i in (0...9).reversed(){
    for num in n{
        if Int(String(num))! == i{
            print(i, terminator: "")
        }
    }
}

