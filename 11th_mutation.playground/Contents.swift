import UIKit

struct MyStruct {
    var value = 0
    
    func showIt(){
        print("value: \(value)")
    }
    //mutating을 이용해서 구조체 안 값을 바꿀 수 있음
    mutating func increase() {
        value += 1
    }

}
//구조체
struct Cart{
    var orders: [Int] = []
    //mutating
    mutating func addOrder(price:Int) {
        orders.append(price)
    }
    //총합 - 합계 금액을 저장해야 하는가?
    //판매금액 합계 함수
    func sum() -> Int {
        var result = 0
        for item in orders{
            result += item
        }
        return result
    }
    
    //프로퍼티로 만들기 - 값을 저장하는 용도가 아닌, 그 상황 : computed property
    var sum2: Int {
        var result = 0
        for item in orders{
            result += item
        }
        return result
    }
    
}
var cart = Cart()

cart.addOrder(price: 1000)
cart.addOrder(price: 2000)
cart.addOrder(price: 3000)
print("sum :", cart.sum())

print("sum2 : ", cart.sum2)

struct Point{
    var x: Double
    var y: Double
    var xyDistance: Double = 0
    
    //distance (x,y값이 계속 바뀌니 값을 저장할 필요가 없음)
    mutating func distanceFromZero() -> Double{
        return 0
    }
    
    //프로퍼티는 파라미터 못 가짐
    var distance: Double {
        var xyDistance = sqrt(pow(x, y))
        
        return xyDistance
    }
}

//var myPoint = Point()
//myPoint.x = 3
//myPoint.y = 4
//
//print(myPoint.distance)
