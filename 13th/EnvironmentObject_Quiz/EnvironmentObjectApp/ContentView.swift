//
//  ContentView.swift
//  TanAndSharedData
//
//  Created by Jaehoon Lee on 2/14/24.
//

import SwiftUI

struct ContentView: View {
    var model = SharedData()
    
    var body: some View {
        TabView {
            PlusView()
                .tabItem {
                    Label("Plus", systemImage: "plus")
                }
            MinusView()
                .tabItem {
                    Label("Minus", systemImage: "minus")
                }
        }
    }
}

#Preview {
    ContentView()
}
