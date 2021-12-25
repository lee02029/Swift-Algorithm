//
//  11720.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/25.
//

import Foundation

let n = Int(readLine()!)!
var numbers: [Int] = []

readLine()!.forEach{ numbers.append(Int(String($0))!)}
print(numbers.reduce(0,+))

//foreach란 반복되는 코드를 파라미터로 받고, 저장된 요소는 클로저 상수로 전달한다.
//간단히 이야기하면 내가 클로저를 작성 -> 근데 이 작업을 반복하고 싶으면 클로저를 작성하여 foreach 파라미터로 넘겨 준다
//-> 그러면 collection 에 저장된 요소는 클로저를 반복 실행할 때 마다 클로저 상수로 넘긴다.
//그러면 이때 클로저란 무엇인가??
//먼저 함수와 메서드를 비교해보자
//우리가 일반적으로 func로 생성한는 것은 모두 합수이다.
//이때 클래스, 구조체, 열거형 속에 포함되 있다면 메서드이다.
//일단 func 키워드를 이용하는 함수들도 모두 클로저이다!!!
//이때 클로저는 named closure와 unnamed closure로 나뉘게 되는데
//위에 func를 사용하는 것은 named closure이다!!
//그리고 예를 들어 let closure = {print("Yoon")}은 익명함수 즉, unnamed closure를 의미한다.
//일단 보편적으론 클로저라 하면 unnamed closure를 의미한다.
