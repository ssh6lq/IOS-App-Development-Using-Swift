//
//  ContentView.swift
//  6th_2
//
//  Created by usg on 2/1/24.
//

import SwiftUI

struct Menu: Identifiable{
    let id = UUID()
    var name: String
    var price: Int
}

struct Cafe: Identifiable{
    let id = UUID()
    var name: String
    var menu: [Menu]
    var company: String
}

struct ContentView: View {
    var cafe: [Cafe] = [
        Cafe(name:"Coffee & Beverage",
            menu: [
                Menu(name: "아메리카노", price: 4500),
                Menu(name: "카페라떼", price: 5000),
                Menu(name: "자허블", price: 5500),
                Menu(name: "자바칩프라푸치노", price: 6500)
            ],company: "starbucks"
            ),
    Cafe(name: "food",
         menu: [
            Menu(name: "샌드위치", price: 6000),
            Menu(name: "샐러드", price: 5500),
            Menu(name: "케이크", price: 7000),
         ], company: "starbucks")]
    
    var body: some View {
        List(cafe) { group in
        Section(content: {
            ForEach(group.menu){menu in
                HStack{
                    Text(menu.name)
                    
                    Spacer()
                    
                    Text(String(menu.price))
                        .foregroundStyle(.gray)
                }
            }
        }, header: {
            HStack{
                Text(group.name)
                    .font(.title3)
                    .bold()
            }
        }, footer: {
            HStack{
                Spacer()
                Text("회사: \(group.company)")
            }
        })}

    }
}

#Preview {
    ContentView()
}
