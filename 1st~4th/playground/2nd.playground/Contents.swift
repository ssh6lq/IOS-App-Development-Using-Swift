import UIKit

let greeting = "여러분 안녕하세요! "

print(greeting)
print(greeting + "오늘은 두번째 수업이네요!")



//프로그램에 사용되는 데이터를 메모리에 임시로 저장하는 것 = 변수와 상수
//변수는 var: 데이터 타입 = 값
//상수는 let
//타입 추론(type inference)

var year: Int = 2024

//let 상수명: 데이터 타입 = 값
let year2: Int = 2024
let name2: String = "ddd"

let birthday: Int = 20

//string interpolation 이라고 함
print("내 생일은 \(birthday)일이야")

//Int - 정수타입
//UInt - 양의 정수

var degree: Int = -8
var score: UInt = 10

let maxInt: Int = Int.max
let minInt: Int = Int.min

// let maxuint: UInt = Unit.max
// let minuint: UInt = Unit.min



var isclass: Bool = true

let a: Character = "a"

let abc: String = "abc"


let msg = "안녕하세요"
print(msg.count)



//
var name: String = String()
var checkName: Bool = name.isEmpty

let lower = "abc"
print(lower.uppercased())
let upper = "ABC"
print(upper.lowercased())

print("\"로버트 엘리엇은 \n \"피할 수 없으면 즐겨라\"고 했다\"")




var name3: String = "장원영"
var birthyear: Int = 2004
var birthplace: String = "서울"

var introduction:String = """
\(name3)은 \(birthyear)년에 \(birthplace)에서 태어났어요.
"""

print(introduction)


