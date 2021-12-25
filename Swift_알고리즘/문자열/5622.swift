//
//  5622.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/25.
//

//switch-case 사용
import Foundation

let line = readLine()!
var time: Int = 0

for char in line{
    switch(char){
    case "A", "B", "C":
        time += 3
    case "D", "E", "F":
        time += 4
    case "G", "H", "I":
        time += 5
    case "J", "K", "L":
        time += 6
    case "M", "N", "O":
        time += 7
    case "P", "Q", "R", "S":
        time += 8
    case "T", "U", "V":
        time += 9
    case "W", "X", "Y", "Z":
        time += 10
    default:
        time += 0
    }
}

print(time)
