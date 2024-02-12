//
//  CoffeeDetailView.swift
//  CoffeeOrder
//

import SwiftUI

struct CoffeeDetailView: View {
    var coffee: Coffee
    
    var body: some View {
        VStack {
            Text(coffee.name)
                .font(.title)
        }
    }
}

#Preview {
    CoffeeDetailView(coffee: coffees[0])
}
