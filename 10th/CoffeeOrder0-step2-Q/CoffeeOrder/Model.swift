//
//  Model.swift
//  CoffeeOrder
//

import Foundation

struct Nutrition: Equatable {
    let size: String
    let amount: Int
    let calories: Int
    let carbohydrates: Int // 탄수화물
    let sugars: Int // 당류
    let sodium: Int // 나트륨
    let protein: Int // 단백질
    let fat: Int // 지방
    let cholesterol: Int // 콜레스테롤
    let caffein: Int // 카페인
}

struct Coffee: Identifiable {
    let id = UUID()
    
    let name: String
    let engName: String
    let price: Int
    let image: String
    let desc: String
    
    let alergy: String?
    let similars: [String]
    
    let nutritions: [Nutrition]
}

let coffees = [
    Coffee(
        name: "아이스 카페 아메리카노",
        engName: "Iced Caffe Americano",
        price: 4500,
        image: "iced-caffe-americano",
        desc: "진한 에스프레소에 시원한 정수물과 얼음을 더하여 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽고 시원하게 즐길 수 있는 커피",
        alergy: nil,
        similars: ["iced-decaf-caffe-americano", "peach-strawberry-starbucks-fizzio", "iced-grapefruit-honey-black-tea", "iced-starbucks-dolce-latte"],
        nutritions: [
            Nutrition(size: "Tall", amount: 355, calories: 10, carbohydrates: 2, sugars: 0, sodium: 5, protein: 1, fat: 0, cholesterol: 0, caffein: 150),
            Nutrition(size: "Grande", amount: 473, calories: 15, carbohydrates: 3, sugars: 0, sodium: 10, protein: 2, fat: 0, cholesterol: 0, caffein: 225),
        ]
    ),
    Coffee(
        name: "아이스 자몽 허니 블랙 티",
        engName: "Iced Grapefruit Honey Black Tea",
        price: 5700,
        image: "iced-grapefruit-honey-black-tea",
        desc: "새콤한 자몽과 달콤한 꿀이 깊고 그윽한 풍미의 스타벅스 티바나 블랙 티의 조화",
        alergy: nil,
        similars: [], // 빈 배열로 없는 값 사용
        nutritions: [
            Nutrition(size: "Tall", amount: 355, calories: 125, carbohydrates: 31, sugars: 30, sodium: 5, protein: 0, fat: 0, cholesterol: 0, caffein: 30),
            Nutrition(size: "Grande", amount: 473, calories: 175, carbohydrates: 43, sugars: 41, sodium: 5, protein: 0, fat: 0, cholesterol: 0, caffein: 45)
        ]
    ),
    Coffee(
        name: "아이스 카페 라테",
        engName: "Iced Caffe Lette",
        price: 5000,
        image: "iced-caffee-latte",
        desc: "풍부하고 진한 농도의 에스프레소가 시원한 우유와 얼음을 만나 고소함과 시원함을 즐길 수 있는 대표적인 커피 라테",
        alergy: "우유",
        similars: ["iced-starbucks-dolce-latte"],
        nutritions: [
            Nutrition(size: "Tall", amount: 355, calories: 110, carbohydrates: 9, sugars: 8, sodium: 75, protein: 6, fat: 6, cholesterol: 20, caffein: 75),
            Nutrition(size: "Grande", amount: 473, calories: 150, carbohydrates: 12, sugars: 10, sodium: 95, protein: 8, fat: 7, cholesterol: 25, caffein: 150)
        ]
    )
    // todo : 각자 추가
]
