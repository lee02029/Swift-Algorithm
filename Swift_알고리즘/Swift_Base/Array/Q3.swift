//
//  Q3.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/10.
//

/*
 When someone searches their contacts based on a phone number, it's nice when a list
 of contact pops up.
 
 Write an algorithm that searches you contacts for phone number strings, and returns:
  - NO CONTACT if contact can't be found
  - A contact if a contact is found
  - The first alphabetized contact if there are multiple
 
 A = ["pim", "pom"]             // Contacts (return one of these)
 B = ["999999999", "777888999"] // Phone numbers for each contact A[i] = B[i]
 P = "88999"                    // Search phrase

 Answer should be correct. Don't worry about performance.
 */


import Foundation

let A : [String] = readLine()!.split(separator: " ").map{String($0)}
let B : [String] = readLine()!.split(separator: " ").map{String($0)}
let P = readLine()!

func solution() -> String{
    var result = [String]()
    for i in 0..<B.count {
        if B[i].contains(P){
            result.append(A[i])
        }
    }
    if result.count == 0{
        return "NO CONTACT"
    } else if result.count == 1{
        return result.first!
    }
    return result.sorted().first!
}
print(solution())
