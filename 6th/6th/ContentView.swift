//
//  ContentView.swift
//  6th
//
//  Created by usg on 2/1/24.
//

import SwiftUI

struct Member: Identifiable{
    let id = UUID()
    var name: String
    var age: Int
}
//protocol
struct KpopGroup: Identifiable{
    let id = UUID()
    var name: String
    var member: [Member]
    var company: String
}

struct ContentView: View {
    
    var kpopGroup: [KpopGroup] = [
        KpopGroup(name:"RIIZE",
                  member: [
                    Member(name: "쇼타로", age: 23),
                    Member(name: "은석", age: 22),
                    Member(name: "성찬", age: 22),
                    Member(name: "원빈", age: 21),
                    Member(name: "승환", age: 20),
                    Member(name: "소희", age: 20),
                    Member(name: "앤톤", age: 20)
                  ],
                 company: "SM"),
    KpopGroup(name: "아이들", member: [
        Member(name: "미연", age: 26),
        Member(name: "민니", age: 26),
        Member(name: "소연", age: 25),
        Member(name: "우기", age: 24),
        Member(name: "슈화", age: 24),
    ], company: "큐브")]
    
    var body: some View {
        List(kpopGroup) { group in
            Section(content: {
                ForEach(group.member){member in
                    HStack{
                        Text(member.name)
                        
                        Spacer()
                        
                        Text(String(member.age))
                            .foregroundStyle(.gray)
                    }
                }
            }, header: {
                HStack{
                    Text(group.name)
                        .font(.title3)
                        .bold()

                }
            }, footer: {
                HStack{
                    Spacer()
                    Text("소속사: \(group.company)")
                }
            })
            
        }
    }
}

#Preview {
    ContentView()
}
