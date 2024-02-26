//import UIKit
//
//var university: String = "00학교"
//var state: String = "재학/졸업"
//var major: String = "OO학과"
//var grade: Int = 4
//
//var introduction:String = """
//저는 \(university)에 \(state)상태이고,전공은 \(major) \(grade)학년 입니다.
//"""
//
//print(introduction)

func makeIntroduce(university: String, state: String, major: String, grade: Int) ->
    String{
    let introduction:String = """
    저는 \(university)에 \(state)상태이고,전공은 \(major) \(grade)학년 입니다.
    """
    return introduction

}
print(makeIntroduce(university: "oo대학교", state: "재학", major: "전공", grade: 4))

