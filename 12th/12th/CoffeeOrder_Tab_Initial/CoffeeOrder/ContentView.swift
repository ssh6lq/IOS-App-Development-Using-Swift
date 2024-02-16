//
//  ContentView.swift
//  CoffeeOrder
//
//  Created by Jaehoon Lee on 2/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var cart = Cart()
    
    var body: some View {
        TabView{
            CoffeeMenuView()
                .tabItem { 
                    Text("Menu")
                    Image(systemName: "doc.text")}
            CartView()
                .tabItem { 
                    Text("Cart")
                    Image(systemName: "cart")}
        }

    }
}

#Preview {
    ContentView()
}

