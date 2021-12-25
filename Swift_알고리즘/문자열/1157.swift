//
//  1157.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/25.
//

import Foundation

var str = readLine()!
var arr = Array(repeating: 0, count: 26)

for i in str{
    let a = i
    for j in 0...26{
        if a.asciiValue! == 65 + j || a.asciiValue! == 97+j{
            arr[j] += 1
        }
    }
}

var confirm = false

for i in 0..<26{
    var a = 0
    for j in 0..<26{
        if arr[i] > arr[j]{
            a += 1
        }
    }
    if a == 25{
        print(Character(UnicodeScalar(i + 65)!))
        confirm = true
        break
    }
}
if confirm == false{
    print("?")
}

//일단 swift는 ascii를 사용하지 않는다.
//unicode에다가 extended grapheme cluster라는 것 문자로 표현해서, 다른 언어들의
//문자열과는 사뭇 다른다. 다만, C언어처럼 string[10]같은 문자열의 요소에 인덱스로 접근할수가 없다.
//고로,Swift의 경우 Charater의 asciiValue라는 포로퍼티를 통해서야만 Ascii 값을 얻을 수가 있다.
//그리고 그 Ascii값을 다시 원래의 Character로 돌리러면 UnicodeScalar라는 행변환을 해줘야한다.
