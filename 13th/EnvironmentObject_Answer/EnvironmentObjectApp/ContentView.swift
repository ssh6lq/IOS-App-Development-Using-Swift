//
//  ContentView.swift
//  TanAndSharedData
//
//  Created by Jaehoon Lee on 2/14/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = SharedData()
    
    var body: some View {
        TabView {
            PlusView()
                .environmentObject(model)
                .tabItem {
                    Label("Plus", systemImage: "plus")
                }
            MinusView()
                .environmentObject(model)
                .tabItem {
                    Label("Minus", systemImage: "minus")
                }
        }
    }
}

#Preview {
    ContentView()
}
