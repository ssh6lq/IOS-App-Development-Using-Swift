import UIKit

struct Coffee{
    let name : String
    let allergy : String?

}

//아메리카노 정보 출력
//let americano = Coffee(name: "아메리카노", allergy: nil)
//let latte = Coffee(name: "라떼", allergy: "우유")
//
////아메리카노 정보 출력
//if let americanoAllergy = americano.allergy{
//    print("이름 - \(americano.name), 알러지 - \(americanoAllergy)")
//} else{
//    print("이름 - \(americano.name), 알러지 유발 요소가 없습니다.")
//}
//
////라떼 정보 출력
//if let latteAllergy = latte.allergy{
//    print("이름 - \(latte.name), 알러지 - \(latteAllergy)")
//} else{
//    print("이름 - \(latte.name), 알러지 유발 요소가 없습니다.")
//}

//이번시간
let americano = Coffee(name: "아메리카노", allergy: nil)
let latte = Coffee(name: "라떼", allergy: "우유")

//func printCoffeeInfo(_ coffee: Coffee){
//    if let allergy = coffee.allergy{
//        print("음료 이름은 \(coffee.name)이고, 알러지 유발 요소는 \(allergy)입니다.")
//    }else{
//        print("음료 이름은 \(coffee.name)이고, 알러지 유발 요소는 없습니다.")
//    }
//}

print(americano.name)

if americano.allergy == nil {
    print("알레르기 유발 요소는 없습니다.")
} else{
    print(americano.allergy)
}

if let allergy = americano.allergy{
    print("알레르기 유발 요소는 \(allergy) 입니다.")
} else{
    
}

var message = "메뉴 이름은 \(americano.name)"
if let allergy = americano.allergy{
    message += "알레르기 유발 요소는 \(allergy) 입니다."
} else{
    message += "알레르기 유발 요소는 없습니다."
}


//unwrapping
print("메뉴 이름은 \(americano.name)이고, 알레르기 유발 요소는 \(americano.allergy ?? "없음")")
