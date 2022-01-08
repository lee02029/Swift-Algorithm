//
//  7576.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/08.
//

import Foundation

let size = readLine()!.split(separator: " ").map({Int(String($0))!}) // 상자 크기
let m = size[0] // 가로 칸 수
let n = size[1] // 세로 칸 수
var box = [[Int]]() // 주어진 박스
var queue = [(Int, Int)]()
let dx = [-1, 1, 0 , 0], dy = [0, 0, -1, 1] // 상하좌우 검색을 위한 좌표 변화량
var empty = 0 // 0으로 채워진 자리들의 개수를 누적!
var count = 0 // 0을 1로 바꾸는 횟수를 누적!

for _ in 0..<n {
    box.append(readLine()!.split(separator: " ").map({Int(String($0))!}))
}

// bfs 함수 구현
func bfs() {
    var index = 0 // queue를 removeFirst하니까 시간초과,, => 굳이 제거하지않고 인덱스로 찾아줌.
    
    while index < queue.count {
        let (x, y) = queue[index]
        index += 1
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx < 0 || ny < 0 || nx >= n || ny >= m { continue } // 예외
            
            if box[nx][ny] == 0 {
                queue.append((nx, ny)) // 1로 바뀌었으므로 큐에 추가
                box[nx][ny] = box[x][y] + 1 // 1로 바꾸면서 걸린 시간 누적
                count += 1 // 0에서 1로 바꾼 횟수 누적
            }
        }
    }
}

// 메인 코드 실행 전, 박스에 있는 익은 토마토 및 안익은 토마토 체크
for x in 0..<n {
    for y in 0..<m {
        if box[x][y] == 1 { queue.append((x, y)) } // 1이면 큐에 추가
        else if box[x][y] == 0 { empty += 1 } // 0이면 empty에 개수 누적
    }
}

bfs() // 함수 실행

empty == 0 ? print(0) : (empty == count ? print(box.flatMap({$0}).max()!-1) : print(-1))
