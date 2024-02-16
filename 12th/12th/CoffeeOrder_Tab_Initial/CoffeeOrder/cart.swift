//
//  Cart.swift
//  CoffeeOrder
//
//  Created by usg on 2/13/24.
//

import Foundation

class Cart: ObservableObject {
    @Published var orders: [Coffee] = [] //프로퍼티 --> 초기화 코드 명시적으로 해야함
    
    func addOrder(_ coffee: Coffee) {
        orders.append(coffee)
    }
}
