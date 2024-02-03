//
//  ContentView.swift
//  first_project
//
//  Created by usg on 1/9/24.
//

import SwiftUI
//modifier 순서 중요함

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("NAM SOHEE")
                .font(.system(size: 50, weight:  .bold, design: .serif))
                .foregroundColor(.blue)
                .italic()
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
            
        }
        .padding()
    }
}
//stack
//vstack-가로 hstack-세로 



#Preview {
    ContentView()
}
