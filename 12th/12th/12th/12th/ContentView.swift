//
//  ContentView.swift
//  12th
//
//  Created by usg on 2/13/24.
//
//탭 구성
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
//            ViewA()
//                .tabItem {
//                    ("메뉴")
//                }
            Text("친구")
                .tabItem {
                    Label("친구",systemImage: "person") }
                .badge(10)
//                    Text("메뉴")
                
            Text("채팅")
                .tabItem {
                    Label("채팅", systemImage: "message")
                }
                .badge(30)
            Text("오픈채팅")
                .tabItem {
                    Label("오픈 채팅", systemImage: "bubble.left.and.bubble.right.fill")
                }

            Text("더보기")
                .tabItem {
                    Label("더보기",systemImage: "ellipsis") }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
//TabView {
//            ViewA()
//                .tabItem {
//                    Text("메뉴")
//                }
//            Text("B")
//                .tabItem {
//                    Label("카트", systemImage: "cpu")
//                }
//            Text("C")
//                .tabItem {
//                    Image(systemName: "person")
//                }
//                .badge(10)
//        }
