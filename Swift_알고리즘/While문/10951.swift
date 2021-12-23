//
//  10951.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/23.
//

import Foundation

while let input = readLine(){
    print(input.split(separator: " ").map{Int($0)!}.reduce(0,+))
}
