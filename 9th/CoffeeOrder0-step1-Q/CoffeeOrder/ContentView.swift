//
//  ContentView.swift
//  CoffeeOrder
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(coffees) { coffee in
                NavigationLink {
                    CoffeeDetailView(coffee: coffee)
                } label: {
                    HStack {
                        Image(coffee.image, bundle: nil)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        Text(coffee.name)
                    }
                }
            }
            .navigationTitle("Coffee Order")
        }
    }
}

#Preview {
    ContentView()
}
