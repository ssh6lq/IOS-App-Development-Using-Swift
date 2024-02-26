//
//  ContentView.swift
//  ViewClosing
//
//  Created by Jaehoon Lee on 2/6/24.
//

import SwiftUI

struct ChildView: View {
    var body: some View {
        VStack {
            Text("Child View").font(.headline)
            Text("Hello")
        }
    }
}


struct OnOffView: View {
    var body: some View {
        VStack {
            Text("Child View").font(.headline)
            Button("Hide") {
                // OnOffView 숨기기
            }
        }
    }
}


struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Opacity : 1").font(.title2)
                ChildView()
                    .opacity(1)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .border(Color.black)
            
            VStack {
                Text("Opacity : 0").font(.title2)
                ChildView()
                    .opacity(0)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .border(Color.black)
            
            // todo
            VStack {
                Text("Onoff View").font(.title2)
                Button("show") {
                    // Todo - OnOffView 보이기
                }
                OnOffView()
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .border(Color.black)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
