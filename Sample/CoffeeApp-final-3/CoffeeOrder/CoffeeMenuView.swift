//
//  CoffeeMenuView.swift
//  CoffeeOrder
//
//  Created by wannabewize on 2/8/24.
//

import SwiftUI

enum MenuMode {
    case list
    case grid
    
    var imageName: String {
        switch self {
        case .list: "list.bullet"
        case .grid: "square.grid.3x3"
        }
    }
}

struct CoffeeMenuView: View {
    @EnvironmentObject var cart: Cart
    @State var menuMode: MenuMode = .list
    
    var body: some View {
        NavigationStack {
            VStack {
                if menuMode == .list {
                    CoffeeListView(coffees: coffees)
                }
                else {
                    CoffeeGridView(coffees: coffees)
                        .padding()
                }
            }
            .navigationTitle("Coffees")
            .toolbar {
                Button("ViewMode",
                       systemImage: menuMode == .list ? MenuMode.grid.imageName : MenuMode.list.imageName) {
                    menuMode = menuMode == .list ? .grid : .list
                }
            }
        }        
    }
}

#Preview {
    CoffeeMenuView()
        .environmentObject(Cart())
    
}
