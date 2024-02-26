//
//  CoffeeGridView.swift
//  CoffeeOrder
//
//  Created by wannabewize on 2/8/24.
//

import SwiftUI

struct CoffeeGridView: View {
    @EnvironmentObject var cart: Cart
    var coffees: [Coffee]
    
    let gridColums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridColums) {
                ForEach(coffees) { coffee in
                    NavigationLink {
                        CoffeeDetailView(coffee: coffee)
                            .environmentObject(cart)                        
                    } label: {
                        VStack {
                            Image(coffee.image, bundle: nil)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                            Text(coffee.name)
                                .frame(height: 20)
                                .minimumScaleFactor(0.7)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CoffeeGridView(coffees: coffees)
        .environmentObject(Cart())
}
