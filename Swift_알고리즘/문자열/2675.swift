//
//  2675.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/25.
//

import Foundation

for _ in 0..<Int(readLine()!)!{
    let a = readLine()!.split(separator: " ")
    let b = a[1].map{($0)}
    
    for i in 0..<b.count{
        for _ in 1...Int(a[0])!{
            print(b[i],terminator: "")
        }
    }
    print("")
}
