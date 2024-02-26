//
//  PlusView.swift
//  TanAndSharedData
//
//  Created by Jaehoon Lee on 2/14/24.
//

import SwiftUI

struct PlusView: View {
    @ObservedObject var data: SharedData
    
    var body: some View {
        VStack {
            Text("Plus View")
                .font(.title)
            Spacer()
            
            Text("Shared Value : \(data.value)")
            
            Button(action: {
                data.incValue()
            }, label: {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 100, height: 100)
            })
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    PlusView(data: SharedData())
}
