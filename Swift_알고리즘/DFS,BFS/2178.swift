//
//  2178.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/08.
//

import Foundation

let size = readLine()!.split(separator: " ").map({Int(String($0))!})
let n = size[0] // 세로 길이
let m = size[1] // 가로 길이
var maze = [[Int]]() // 미로
var queue = [(0, 0)] // 경로의 좌표 값을 담을 큐
let dx = [-1, 1, 0 , 0], dy = [0, 0, -1, 1] // 상하좌우 검색을 위한 좌표 변화량

for _ in 0..<n {
    maze.append(readLine()!.map({Int(String($0))!}))
}

// 큐가 빌 때까지 반복
while !queue.isEmpty {
    let (x, y) = queue.removeFirst() // FIFO로 큐의 첫 번째 pop
    
    // 상, 하, 좌, 우 검색을 위해 0부터 3까지 총 4번 반복
    for i in 0..<4 {
        // 현재 위치에 x, y축 각각 dx[i], dy[i] 값을 더해서 검색할 좌표 구해주기
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        // nx, ny가 주어진 미로의 크기에 벗어나거나, 검색할 자리가 0일 경우 continue
        if nx < 0 || ny < 0 || nx >= n || ny >= m || maze[nx][ny] == 0 { continue }
        
        // 검색할 자리가 1일 경우
        if maze[nx][ny] == 1 {
            maze[nx][ny] = maze[x][y] + 1 // 검색하는 자리에 현재 자리에서 1 더한 값 누적
            queue.append((nx, ny)) // 큐에 nx, ny 값 추가
        }
    }
}

print(maze[n-1][m-1])
