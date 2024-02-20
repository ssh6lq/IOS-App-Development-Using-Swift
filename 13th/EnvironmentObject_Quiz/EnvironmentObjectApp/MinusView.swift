//
//  MinusView.swift
//  TanAndSharedData
//
//  Created by Jaehoon Lee on 2/14/24.
//

import SwiftUI

struct MinusView: View {
    var model: SharedData
    
    var body: some View {
        VStack {
            Text("Minus View")
                .font(.title)
            Spacer()
            
            Text("Shared Value : \(model.value)")
            
            Button(action: {
                model.decValue()
            }, label: {
                Image(systemName: "minus")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    
            })
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MinusView()
}
