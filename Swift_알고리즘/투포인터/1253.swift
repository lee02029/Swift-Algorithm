//
//  1253.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/02/04.
//

import Foundation

let N = Int(readLine()!)!
var Array = readLine()!.split(separator: " ").map(){Int(String($0))!}.sorted()
var goodAnswer  = Set<Int>()

func checkAnswer(_ pos: Int) -> Bool {
    
    let val = Array[pos]
    var start = 0, end = N - 1
     
    while start < end {
        if start == pos {
          start += 1
          continue
        }
        if end == pos {
          end -= 1
          continue
        }
        
        if val < Array[start] + Array[end] {
            end -= 1
        } else if val > Array[start] + Array[end] {
            start += 1
        } else {
          return true
        }
      }
      return false
}

var answer = 0
for i in Array.indices {
  if goodAnswer.contains(Array[i]) {
    answer += 1
  } else if checkAnswer(i) {
    answer += 1
    goodAnswer.insert(Array[i])
  }
}
print(answer)
