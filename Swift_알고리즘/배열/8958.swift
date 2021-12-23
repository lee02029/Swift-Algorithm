//
//  8958.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/23.
//

import Foundation

let currentTime = Date()

let count: Int = Int(readLine()!)!

for _ in 0..<count{
    print(readLine()!.split(separator:"X").reduce(0){
        $0 + ($1.count * ($1.count + 1) / 2)
    })
}


print("실행 시간\(-currentTime.timeIntervalSinceNow)")
