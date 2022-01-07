//
//  1260.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/06.
//

import Foundation

func DFS(start: Int){
    var visited = [Int]()
    var stack = [start]
    
    while !stack.isEmpty{
        let node = stack.popLast()!
        if !visited.contains(node){
            visited.append(node)
            print(node,terminator: " ")
            stack.append(contentsOf: graph[node].sorted(by: >))
        }
    }
}
func BFS(start: Int){
    var visited = [Int]()
    var queue = [start]
    
    while !queue.isEmpty{
        let node = queue.removeFirst()
        if !visited.contains(node) {
            visited.append(node)
            print(node,terminator: " ")
            queue.append(contentsOf: graph[node].sorted())
        }
    }
}

var readline = readLine()!.split(separator: " ").map{Int($0)!}
let n = readline[0]
let m = readline[1]
let v = readline[2]
var graph : [[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: n+1)

for _ in 0..<m{
    let readline = readLine()!.split(separator: " ").map{Int($0)!}
    let src = readline[0]
    let dest = readline[1]
    graph[src].append(dest)
    graph[dest].append(src)
}

DFS(start: v)
print()
BFS(start: v)

