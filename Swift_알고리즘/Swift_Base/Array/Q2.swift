//
//  Q2.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/10.
//

/*
 We are given a string S representing a phone number, which we would like to reformat. String S consists of N characters: digits, spaces, and/or dashes. It contains at least two digits.
 
 Spaces and dashes in string S can be ignored. We want to reformat the given phone number is such a way that the digits are grouped in blocks of length three, separated by single dashes. If necessary, the final block or the last two blocks can be of length two.
 
 For example:
 
 S = "00-44   48 5555 8361" should become
     "004-448-555-583-61"
 
 Assume:
 - S consists only of digits (0-9), spaces, and/or dashses (-)
 - S containts at least two digits
 
 Translate:
 
 Would like to reformat a phone number string so that:
 - every third char is a "-"
 - spaces and dashes don't matter
 - if the block ends in anything other than -xxx or -xx reformat to a block of two like xx-xx (not obvious)
 
 */
import Foundation

let S = readLine()!
func solution() -> String{
    let noSpace = S.replacingOccurrences(of: " ", with: "")
    let noSpaceNoDash = noSpace.replacingOccurrences(of: "-", with: "")
    // loop through char-by-char appending dashes
    var result = ""
    var count = -2
    for c in noSpaceNoDash{
        result.append(c)
        if count % 3 == 0 {
            result.append("-")
        }
        count += 1
    }
    //strip off lingering dash
    if result.last == "-"{
        result = String(result.dropLast())
    }
    //if second last char has a dash (-x)
    //reformat last three chars to(-xx)
    var chars = Array(result)
    let secondLastPtr = chars.count - 2
    if chars[secondLastPtr] == "-"{
        //*-x -> -*x
        chars[secondLastPtr] = chars[secondLastPtr - 1]
        chars[secondLastPtr - 1] = "-"
    }
    return String(chars)
}

print(solution())

