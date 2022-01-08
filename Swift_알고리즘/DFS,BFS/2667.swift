//
//  2667.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/08.
//

import Foundation

let n = Int(readLine()!)!
var map = [[Int]]()
var count = 0
var block = [Int]()

for _ in 0..<n{
    map.append(Array(readLine()!.map{Int(String($0))!}))
}
//dfs 함수호출
func dfs(_ x:Int,_ y:Int){
    if x<0 || y<0 || x>=n || y >= n || map[x][y] == 0 {return}
    count += 1 // 단지 넓이 추적
    map[x][y] = 0
    
    //재귀호출
    dfs(x+1,y)
    dfs(x-1,y)
    dfs(x,y+1)
    dfs(x,y-1)
}

// 메인 실행
for i in 0..<n{
    for j in 0..<n{
        if map[i][j] == 1{
            count = 0 // 카운트 초기화
            dfs(i,j)
            block.append(count) //block 배열애 방금 구한 단지 크기 추가
        }
    }
}

print(block.count)
print(block.sorted().map{String($0)}.joined(separator: " "))
