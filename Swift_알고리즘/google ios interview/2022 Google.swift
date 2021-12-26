//
//  2022 Google.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/27.
//

import Foundation

func solve(_ numRows: Int) -> [[Int]]{
    guard numRows > 0 else{
        return []
    }
    
    if numRows == 1 {return [[1]]}
    
    var result = [[Int]]()
    result.reserveCapacity(numRows)
    result.append([1])
    
    for x in 1..<numRows{
        var newRow = [1]
        let prevRow = result[x-1]
    
        for j in 1..<prevRow.count {
            let sum = prevRow[j] + prevRow[j-1]
            newRow.append(sum)
        }
    
        newRow.append(1)
        result.append(newRow)
    }
    return result
}

let answer = solve(10)
for row in answer{
    print(row)
}
