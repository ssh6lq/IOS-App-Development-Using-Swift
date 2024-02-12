//
//  ContentView.swift
//  10th
//
//  Created by usg on 2/2/24.
//

import SwiftUI

struct ContentView: View {
    //@state 상태 값 변경
    @State var count = 0
    @State var isModalVisible = false
    
    var sizes = ["tall", "grande", "venti"]
    var selected = [
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Count :\(count)")
            Button(action: {
                count = count + 1
            }, label: {
                Text("+")
            })
            Button(action: {
                isModalVisible = true
            
            }, label: {
                Text("Show")
            })
            .sheet(isPresented: $isModalVisible, content: {
                Text("Modal")
            })
            
            HStack{
                Text(sizes[0])
                Text(sizes[1])
                Text(sizes[2])

            }
            
            HStack{
                Button(action: {
                    selected = sizes[0]
                }, label: {
                    Text(sizes[0])
                })
                Button(action: {
                    selected = sizes[1]
                }, label: {
                    Text(sizes[1])
                })
                Button(action: {
                    selected = sizes[2]
                }, label: {
                    Text(sizes[2])
                })
            }
            
            HStack{
                ForEach(sizes, id:\.self) { size in
                    Text(size)
                }
                
            }
            Text(selected ?? "없음")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
