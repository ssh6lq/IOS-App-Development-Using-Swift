//
//  ContentView.swift
//  introduciton
//
//  Created by usg on 1/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("character")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 30)
            
            HStack{
                Text("2023년 가장 기억에 남는 순간은?")
                    .font(.system(size: 25, weight: .bold))
                
                Spacer()
            }
            
            Image("dela")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 30)
            
            HStack{
                Text("2024년 어떤 걸 도전하고 싶나요?")
                    .font(.system(size: 25, weight: .bold))
                Spacer()
            }
            HStack(alignment: .firstTextBaseline, content: {
                Text("📚")
                    .font(.system(size: 60))
                Text("자격증 취득")
                    .font(.system(size: 40))
            })
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
