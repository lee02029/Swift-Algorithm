//
//  1697.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/08.
//

import Foundation

let info = readLine()!.split(separator: " ").map({Int(String($0))!})
var subin = info[0] // 수빈이의 시작점
var target = info[1] // 동생 위치
var queue = [(subin, 0)] // 이동하는 수빈이의 위치와 해당 위치까지 가는데까지 걸린 시간을 튜플로 담음
var found = false // 찾았는지 체크하는 불 변수
var visited = Array(repeating: 0, count: 100001) // 이미 수빈이가 다녀간 자리들을 체크해주기 위함

var index = 0

if subin == target { print(0) } // 처음부터 수빈이와 동생의 위치가 같을 경우 => 바로 끝
else {
    while true {
        let (now, now_count) = queue[index]
        index += 1
        var next = 0 // 수빈이가 이동할 위치를 담을 변수

        for i in 0..<3 {
            if i == 0 { next = now - 1 } // X-1 이동
            else if i == 1 { next = now + 1 } // X+1 이동
            else { next = now * 2 } // X*2 이동
            
            if next < 0 || next > 100000 || visited[next] == 1 { continue } // 예외!
            if next == target { found = true; break } // 찾았을 경우
            visited[next] = 1 // 수빈이가 지나간 곳은 1로 체크헤주기 (같은 곳 또 지나갈 필요 전혀x)
            queue.append((next, now_count + 1)) // 수빈이가 이동할 위치와 그 위치까지 가는데 걸린 시간 추가!
        }
        
        if found { print(now_count+1); break } // 결과 출력
    }
}
