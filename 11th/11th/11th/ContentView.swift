//
//  ContentView.swift
//  11th
//
//  Created by usg on 2/13/24.
//

import SwiftUI
//자식뷰
struct ChildView: View {
//    @State var childValue: Int
    
    //바인딩(부모 값과 연동)
    @Binding var childValue: Int
//    var childValue = 0
    var body: some View {
        Text("child : \(childValue)")
        Button("-") {
            childValue -= 1
        }
    }
}

struct ContentView: View {
    //값이 바뀌는 것을 반영하기 위해 State 사용
    @State var value = 0
//    var value = 0
    func increaseValue(){
        
    }
    var body: some View {
        VStack {
            Text("\(value)")
            // 세가지 방법으로 표현할 수 있음
            Button("+", action: increaseValue)
            Button("+", action: {() -> Void in
            })
            Button("+") {
                value = value + 1
            }
            Text("child view").font(.headline)
//            ChildView(childValue: value) //부모의 값 반영(동기화)
            ChildView(childValue: $value) //값 앞에 $ 넣으면 바인딩 됨.
        }

        
        .padding()
    }
}

#Preview {
    ContentView()
}
