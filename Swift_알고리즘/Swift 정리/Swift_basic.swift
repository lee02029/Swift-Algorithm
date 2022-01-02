//
//  Swift_basic.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/02.
//

//배열
//1차원 배열
var arr1 = [Int]()
var arr2: Array<Int> = []
var arr3: [Int] = []
//2차원 배열
var arr4 = [[Int]]()
//원소와 크기를 지정해서 배열 만들기
var arr = Array(repeating: 1, count: 5) // [1,1,1,1,1]
//범위값으로 배열 만들기
var arr5 = Array(1...3)
//배열 정렬
var arr6 = [1,3,2]
arr.sort() // 오름차순 [1,2,3]
arr.sort(by: >) // 내림차순 [3,2,1]
//배열 다루기
var arr = [1,2,3,4,5]
//인젝스로 원소 찾기
arr[2] // 3
//원소로 인덱스 찾기(옵셔널)
arr.firstIndex(of: 3)! // 2
//인덱스로 원소 지우기
arr.remove(at: 2) // [1,2,3,5]
//맨 뒤에 새원소 추가
arr.append(6) // [1,2,3,5,6]
//맨 뒤 원소 지우고 반환
arr.removeLast() // [1,2,3,5]
//특정 인덱스에 원소 넣기
arr.insert(3, at:2) // [1,2,3,4,5]
//특정 원소 있는지 확인
arr.contains(3) // true
//순서 반전
arr.reverse() // [5,4,3,2,1]
//첫 원소 지우고 반환
arr.removeFirst()
//첫 원소 반환(옵셔널)
arr.first!
//마지막 원소 지우고반환(옵셔널 - 배열이 비어있으면 nil 변환)
arr.popLast()!
//마지막 원소 변환 (옵셔널)
arr.last!
//원소의 최대값,최소값(옵셔널)
var min = arr.min()! // 1
var max = arr.max()! // 5
//모든 원소 지우기
arr.removeAll()
//조건을 만족하는 모든 원소 지우기
arr.removeAll(where: {$0 % 2 == 0})
//arr.removeAll{$0 % 2 == 0} // 함축
//원소 스왑
arr.swapAt(_:, _:)

//map
var arrStr = ["1","2","3"]
var arrInt = arrstr.map{Int($0)!} // [1,2,3]원소를 Int형으로 변환
//filter
var arr =[1,2,3,4,5]
var arrEven = arr.filter {$0 % 2 == 0} //[2,4]
var arrOdd = arr.filter { $0 % 2 == 1} //[1,3,5]
//reduce
var arr = [1,2,3]
arr.reduce(0,+) // 모든 원소 더하기 -> 6
arr.reduce(0,-) // 모든 원소 빼기 -> -6

//배열 순회하기
var arr = [1,2,3]
for n in arr{
    print(n)
}
//순회하며 원소와 인덱스 참조 - enumerated()
for (index,value) in arr.enumerated() {
    print("\(index), \(value)")
}
//인덱스로 순회
var arr = [1,2,3]
//count 사용
for i in 0..<arr.count{
    print(arr[i])
}
//indices 사용
for i in arr.indices {
    print(arr[i])
}
//역순으로 순회
var arr = [1,2,3]
for i in (0..<arr.count).reversed(){
    print(arr[i])
}
for i in arr.indices.reversed(){
    print(arr[i])
}
//배열 거꾸로 출력 - revesed()
var arr = [1,2,3]
var arrReversed = arr.reversed()
//순회 참조 가능
for n in arrReversed{
    print(n)
}
//arrReversed[0] -> 직접 참조 불가

var arr = [1,2,3]
arr.reversed() // 배열 자체를 거꾸로 만들면
//순회 참조 가능
for n in arr{
    print(n)
}
arr[0] //직접 참조 가능

//문자열
//특정 문자 분리하기 - split()
var str = "Hello World! Swift"
var strings = str.split(separator: " ")
print(strings) // ["Hello", "World!", "Swift"]
//문자열 배열을 하나의 문자열로 합치기-joined()
let arrHello = ["Hello","World","!"]
var hello = arrHello.joined() // "HelloWorld"
hello = arrHello.joined(separator: " ") // Hello World !
hello = arrHello.joined(separator: ", ") // Hello, World, !
//대,소문자 - capitalized,uppercased(),lowercased
var str = "abcdef"
str = str.capitalized // 첫번쨰만 대문자로 변경 "Abcdef"
str = str.uppercased() // 전체 대문자로 변경 "ABCDEF"
str = str.lowercased() // 전체 소문자로 변경 "abcdef"
//문자열 포함 체크 - contains()
var str = "abcdef"
str.contains("a") // true
str.contains("ab") //true
str.contains("cd") // true
str.contains("ac") // false
//특정 문자를 다른 문자로 변경한 문자열 반환
var str2 = str.replaceOccurrences(of: "a", with: "b")
print(str) //원본엔 영향 없음
print(str2) // bbcdef
//String 인덱스 다루기
var str = "abcdef"
//문자열 원소 접금
//str[0] // 직접 접근 않됨. String 인덱스로 접근해야됨
str[str.startindex] // "a"
//3번쨰 문자 가져오기
let index = str.index(str.startindex,offsetBy:3 -1)
str[index] // "c"
//일정 범위의 문자열만 가져오기
let sub = str[str.startIndex...index] // "abc"
//특정 원소의 인덱스
str.firstIndex(of: "c")

//비트연산
//2진수로 변환했을 째 1의 갯수
let n: Int8 = 25 // 0b0001_1001
n.nonzeroBitCount // 3
//수학
//제곱근 - sqrt()
//Double형 입력받아 Double형 반환
sqrt(4.0) // 2.0
//거듭제곱 - pow()
//Double형 입력받아 Double형 반환
pow(2.0,3.0) // 8.0 //2의 3제곱

