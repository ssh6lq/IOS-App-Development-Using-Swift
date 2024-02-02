//
//  ContentView.swift
//  5th_class
//
//  Created by usg on 1/16/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        //정적
//        List{
//            Text("first item")
//            Text("second item")
//            Text("third item")
//            Image("dela")
//            
//        }
        let names = ["수지","현아","민아"]
        //동적
//        List(names, id: \.self) {
//            name in
//            Text(name)
//        }
        //정적과 동적을 다 사용할 때
        List{
            Text("이름들")
            ForEach(names, id: \.self) {name in
            Text(name)}
        }
        
    }
}

#Preview {
    ContentView()
}
