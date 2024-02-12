import UIKit
// nil이 될 수 있는 상황
var cat: String = "먐미"

//cat = nil --> string/int/bool뒤에 ?를 붙이지 않으면 에러남

var car: String? = "1234"

car = nil

let hasat: Bool? = true
let countOfHouse: Int? = nil

//struct Coffee{
//    let name : String
//    let alergy : String?
//    
//}
//
//let coffee = Coffee(name: "아메리카노", alergy: nil)
//let latte = Coffee(name: "라떼", alergy: "우유")

//소그룹 활동
//struct Things {
//    var name: String
//    var pet: String?
//    var ipad: String?
//}
//let sh = Things(name: "sohee", pet: nil, ipad: "ipad air")

//호텔 - 침대
//case1

//"침대 없음"/"침대 있음" --> bool 타입
//bool
var hasBed = true
hasBed = false

//case 2
//"더블 침대"--> "퀸"/"킹"/"싱글"/"없음"(nil)

var bed : String? = "더블 침대"
bed = nil

//case 3
"name-A"
"XBOX-X"
"고양씨"
"아이폰13"

"name-B"
"PS4"
"깜디"
"갤럭시"

/*
이름  :  A,  B,   C,   D,   E
게임기 : x, ps4, nil, ps5, 스위치
pet :
 */

struct Things{
    let name: String
    let game: String?
    let pet: String?
    var iPhone: String?
}

var thingOfA = Things(name: "A", game: "XBOX", pet: "고양씨",iPhone: "13")
var thingOfB = Things(name: "B", game: "ps4", pet: nil ,iPhone: "12")

thingOfA.iPhone = nil
thingOfB.iPhone = "15"

if let phone = thingOfB.iPhone{
    print(phone)
}

//구조체, 옵셔널 프로퍼티, 초기화 (? 표시가 옵셔널 의미)
struct MyStruct1 {
    var value1: String
    var value2: String
    
}

struct MyStruct2 {
    var value1: String
    var value2: String?
    
}

let myStruct3 = MyStruct2(value1: "10") //value2 : nil
let myStruct4 = MyStruct2(value1: "10", value2: "20")

//unwrapping - unboxing
//strint? -> string (unwrapping)
var number1 = 10
number1 = number1 + 1

var number2: Int? = nil
//number2 = number2 + 1 //nil로 설정해서 오류가 남

//if-let : optional binding
var value3: Int? = 10
//value + 1
if let value = value3 {
    print(value + 1)
}
var value4: Int? = 20
if let v1 = value3, let v2 = value4{
    print(v1,v2)
}
else{
    //nil 동작
}

//forced unwrapping (! 사용)

//let newNumber2 = number2! + 1

let newNumber2 = value4! + 1
print(newNumber2)

//IUO(매번 unwrapping 하기 귀찮을 때 )(optional이면서 자동으로 unwrapping)
var value5: Int! = 10
let newValue5 = value5 + 1
value5 = nil

//??
let newValue6 = value4 ?? 10 //(앞에 비교해서 nil이면 지정한 값을 사용하고, nil이 아니면 원래 값 사용)
print(newValue6)

let newValue7 = value5 ?? 10
print(newValue7)
