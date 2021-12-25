//
//  2908.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/25.
//

import Foundation

let line = readLine()!
let lineArr = line.split(separator: " ").map{Int(String($0.reversed())) ?? 0}

print(max(lineArr[0], lineArr[1]))

//??는 nil-coalescing operator -> 어떤 값이 nil일 수도 있는 상황일때 nil 대산 다른 디폴드 값을
//주고 싶을때 사용된다 -> Ternary operator로 표현된 a! = nil ? a! : b를 간략화한 것이다.!!
//그리고 별개로 if-else문은 dogName = isFemale ? "Lady" : "Tramp"로 표현이 가능하다.

