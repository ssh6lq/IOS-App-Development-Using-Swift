//
//  ContentView.swift
//  6th_class
//
//  Created by usg on 2/1/24.
//

import SwiftUI

struct Member{
    var name: String
    var age: Int
}

struct KpopGroup{
    var name: String
    var member: [Member]
    var company: String
}
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
