//
//  ContentView.swift
//  TanAndSharedData
//
//  Created by Jaehoon Lee on 2/14/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var shared = SharedData()
    
    var body: some View {
        TabView {
            PlusView(data: shared)
                .tabItem {
                    Label("Plus", systemImage: "plus")
                }
            MinusView(data: shared)
                .tabItem {
                    Label("Minus", systemImage: "minus")
                }
        }
    }
}

#Preview {
    ContentView()
}
