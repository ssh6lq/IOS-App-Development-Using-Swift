//
//  ContentView.swift
//  11th_2
//
//  Created by usg on 2/13/24.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = true
    @State var stepperValue = 0
    @State var textValue = ""
    
    @State var isVisible = false
    @State var isVisible2 = false
    
    var body: some View {
        VStack {
//            Button {
//                print("button click")
//            } label: {
//                Image(systemName: "person.circle")
//                Text("B")
//                    .font(.title)
//                Text("utton")
//                    .font(.headline)
//            }
            Button {
                print("스위치는 \(isOn ? "온" : "오프" ) \n스테퍼:\(stepperValue)")
            } label: {
                Image(systemName: "person.circle")
                Text("글쓰기")
                    .font(.headline)
            }
            
            //ison과 연결 on/off
            Text("isOn \(isOn ? "ON" : "OFF")")
            Toggle(isOn: $isOn, label: {
                Text("Toggle")
            })
            .border(Color.black)
            
            //-,+
            Text("Stepper: \(stepperValue)")
            Stepper("Stepper", value: $stepperValue)
            
            TextField("글자 입력", text: $textValue)
                .border(Color.black)
            
            Button("Show"){
                isVisible = true
            }
            .alert("경고", isPresented: $isVisible, actions: {
                Button("OK"){
                    print("OK")
                }
                Button("Cancel"){
                    print("Cancel")
                }
            })
            Button("sheet"){
                isVisible2 = true
            }
            .sheet(isPresented: $isVisible2, content: {
                VStack(content: {
                    Text("sheet")
                    Text("hello")
                })
            }
        )}
        
        .padding()
    }
}

#Preview {
    ContentView()
}
