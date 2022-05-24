//
//  main.swift
//  homeWork 10
//
//  Created by Seroj on 24.05.22.
//

import Foundation

//homeWork 10.1

var name = "text"
var phoneNumber = "094XXXXXX"
var showText = true

func nameAndPhoneNumber(name a: inout String, phoneNumber b: inout String) -> String {
    if showText {
    a = "Kalo"
    b = "094836764"
    }
    return "name: \(a), phoneNumber: \(b)"
}
let c = nameAndPhoneNumber(name: &name, phoneNumber: &phoneNumber)
print(c)

//homeWork 10.2

func arithmeticalMean(numbers a: Int...) -> Double {
    var result: Double = 0

    for i in a {
        result += Double(i)

    }
    result /= Double(a.count)

    return Double(result)
}

let c1 = arithmeticalMean(numbers: 1, 4, 67, 8, 88, 132, 33)
print(c1)

// homeWork 10.3

func firstChars(str a: String...) -> String {
    var str = ""
    for i in a {
        str.append(i[i.startIndex])
    }
    return str
}
let c2 = firstChars(str: "Silverik", "Edition", "Right", "Ocean", "Junior")
print(c2)

//homeWork 10.4

func unionArrayInSet(arr: [Int]...) -> Set<Int> {
    var allSet: Set<Int> = []
    var arr1: Array<Int> = []
    for i in arr {
        arr1 += i
        for iter in arr1 {
            allSet.insert(iter)
        }
    }
    return allSet
}
let c3 = unionArrayInSet(arr: [1, 4, 67], [3, 4, 5], [44, 56, 2], [66, 2])
print(c3)

//homeWork 10.5

var variable = 10
var variableNewValue = 77

func variableChange(variable a: inout Int, variableNewValue b: inout Int) -> String {
    a = b
    return "variable is \(a) : variableNewValue is \(b)"
}
let c4 = variableChange(variable: &variable, variableNewValue: &variableNewValue)
print(c4)

//homeWork 10.6

var text = "Kylian"
var endText = "Mbappe"

func stringsUnionEnd(text: inout String, endText: inout String) -> String {
    text.append(endText)
    return text
}
let c5 = stringsUnionEnd(text: &text, endText: &endText)
print(c5)

//homeWork 10.7

var text1 = "Kylian"
var startText1 = "Mbappe"

func stringsUnionStart(text: inout String, startText: inout String) -> String {
    text.insert(contentsOf: startText, at: text.startIndex)
    return text
}
let c6 = stringsUnionStart(text: &text1, startText: &startText1)
print(c6)

//homeWork 10.8

var text2 = "Kylian"
var midText2 = "Mbappe"

func stringsUnionMiddle(text: inout String, midText: inout String) -> String {
    let newIndex = text.index(text.startIndex, offsetBy: text.count / 2)
    text.insert(contentsOf: midText, at: newIndex)
    return text
}
let c7 = stringsUnionMiddle(text: &text2, midText: &midText2)
print(c7)

