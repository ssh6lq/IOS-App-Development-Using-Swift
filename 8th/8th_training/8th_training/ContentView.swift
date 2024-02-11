//
//  ContentView.swift
//  8th_training
//
//  Created by usg on 2/11/24.
//

import SwiftUI

struct ContentView: View {
    
    var name: String = "소희"
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("\(name)님, 반갑습니다!")
                    .font(.largeTitle)
                    .padding(.bottom,10)
                NavigationLink(destination: {
                    second_view(name: name)},
                               label: {
                    Text("NEXT")
                        .font(.title2)
                })
                
            }
            .navigationTitle("Introduce")
        }
    }
}

#Preview {
    ContentView()
}
