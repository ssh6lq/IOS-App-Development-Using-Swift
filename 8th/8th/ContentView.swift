//
//  ContentView.swift
//  8th
//
//  Created by usg on 2/11/24.
//

import SwiftUI

struct ContentView: View {
    
    var name: String = "소희"
    
    var body: some View {
        NavigationStack{
            VStack{
                //vstack을 넣으면 제목을 줄 수 있음
                Text("반갑습니다! \(name)님")
                    .font(.largeTitle)
                    .padding(.bottom,50)
                Text("첫번째 화면")
                    .font(.largeTitle)
                NavigationLink(destination: {
                    //목적지 화면
                    secondview(name: name)
                }, label: {
                    //목적지 화면을 가기 위해 지금 화면에 표시
                    Text("두번째 화면으로 이동하기!")
                        .font(.title2)
                    //링크로 파란색으로 표현됨
                })
            }
            .navigationTitle("네비게이션 실습")

            
        }
    }
}

#Preview {
    ContentView()
}
