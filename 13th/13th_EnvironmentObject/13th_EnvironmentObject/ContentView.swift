//
//  ContentView.swift
//  13th_EnvironmentObject
//
//  Created by usg on 2/20/24.
//


//공유 데이터 관리_지난시간 Observed 이용
//공유 데이터 관리_environmentobject 이용
import SwiftUI

class SharedModel: ObservableObject{
    @Published var value = 0
    func incValue() {
        value += 1
    }
}
//공유되는 값 볼 수 있음
struct SubView1: View {
//    @ObservedObject
    @EnvironmentObject var model: SharedModel
    
    var body: some View {
        VStack{
            Text("shared value: \(model.value)")
        }
    }
}

//값 더하기
struct SubView2: View {
    @EnvironmentObject var model: SharedModel
    //EnvironmentObject는 값이 없어도 에러로 체크하지 않음, observedObject는 에러가 남.
    
    var body: some View {
        VStack{
            Button("+"){
                model.incValue()
            }
        }
    }
}

struct ContentView: View {
    @StateObject var model = SharedModel()
    
    var body: some View {
        VStack {
            Text("Subview1").font(.headline)
            SubView1()
                .environmentObject(model)
            
            Text("SubView2").font(.headline)
            SubView2()
                .environmentObject(model)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
