var beverage: Dictionary<String, Int> = ["Americano":4500, "caffe latte":5000, "blueberry smoothie":5800, "green tea":3500,"strawbery latte":6000]
var desert: Dictionary<String, Int> = ["chocolate cookie":1000, "cheese cookie":1500, "cheese cake":4500, "carrot cake":5500]

struct Drink{
    var name: String
    var price: Int
    var hasCaffeine: Bool
    var isSoldOut: Bool
    
    }


struct Dessert{
    var name: String
    var price: [String:Int]
    var isSoldOut: Bool
}

var drinks: [Drink] = [
    Drink(name: "Americano", price: 4500, hasCaffeine: true, isSoldOut: false),
    Drink(name: "Caffe Latte", price: 5000, hasCaffeine: true, isSoldOut: false),
    Drink(name: "Blueberry Smoothie", price: 5800, hasCaffeine: false, isSoldOut: true),
    Drink(name: "Green Tea", price: 3500, hasCaffeine: true, isSoldOut: false),
    Drink(name: "Strawberry Latte", price: 6000, hasCaffeine: false, isSoldOut: false)]

var desserts: [Dessert] = [
    Dessert(name: "Chocolate cake", price: ["1개" : 1000, "3개":2000], isSoldOut: false),
    Dessert(name: "Cheese cookie", price: ["1개" : 1500,"3개":4300], isSoldOut: false),
    Dessert(name: "Cheese cake", price: ["1조각" : 4500,"whole":40000], isSoldOut: false),
    Dessert(name: "Carrot cake", price: ["1조각" : 5500,"whole":50000], isSoldOut: true)]

func introduceMenu() {
    print("우리 카페의 메뉴를 소개합니다.")
    print("음료: 총 \(drinks.count)개")
    for drink in drinks {
        print("\(drink.name): \(drink.price)원")
    }
    print("-----------")
    print("디저트: 총 \(desserts.count)개")
    for dessert in desserts {
        var description: String = "\(dessert.name):"
        for price in dessert.price{
            description = description + "\(price.0) \(price.1)원"
            print(description)
        }
    }
}
introduceMenu()


func checkSoldOut() {
    print("현재")
    for drink in drinks {
        if drink.isSoldOut{
            print(drink.name)
        }
            }
    for dessert in desserts {
        if dessert.isSoldOut{
            print(dessert.name)
        }
    }
    print("빼고는 주문 가능하십니다.")
}
checkSoldOut()

//func isDrinkSoldOut(drink: Drink) -> Bool{
//    if drink.isSoldOut{
//        return true
//    } else{
//        return false
//    }
//}

func isDrinkSoldOut(drink: Drink) -> Bool {
    return drink.isSoldOut
}

func checkCaffeine() {
    print("카페인이 없는 음료는")
    for drink in drinks {
        if drink.hasCaffeine == false {
            print(drink.name)
        }
    }
    print("가 있습니다.")
}
checkCaffeine()

func calDrinks(selectedDrinks: [Drink]) -> Int {
    var price = 0
    for drink in drinks {
        price = price + drink.price
    }
    return price
}
calDrinks(selectedDrinks: [drinks[0], drinks[1]])

//func calDrinksDesserts(selectedDrinks:[Drink],selectedDesserts:[Dessert]) -> Int {
//    var price = 0
//    for drink in drinks {
//        price = price + drink.price
//    }
//    for dessert in desserts {
//        price = price + dessert[0].price
//    }
//    return price
//}
