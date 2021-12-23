//
//  10952.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/23.
//

import Foundation

while true{
    let num = readLine()!.split(separator:" ").map{Int($0)!}
    if num == [0,0]{
        break
    }
    print(num[0]+num[1])
}
