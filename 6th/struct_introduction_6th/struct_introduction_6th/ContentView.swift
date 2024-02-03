//
//  ContentView.swift
//  struct_introduction_6th
//
//  Created by usg on 2/3/24.
//

import SwiftUI

struct Goal: Identifiable{
    let id = UUID()
    var emoji: String
    var description: String
}

struct ContentView: View {
    
    var goals: [Goal] = [
        Goal(emoji: "📚", description: "전공 관련 자격증 취득하기"),
        Goal(emoji: "✔️", description: "꾸준히 경제 신문읽기")]
    
    
    
    var body: some View {
        VStack {
            List{
                Section(content:{
                    Image("char")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }, header: {
                    Text("Introduction")
                        .font(.title)
                        .bold()

                })
                
                Section(content: {
                    ForEach(goals) {goal in
                        HStack(alignment: .firstTextBaseline) {
                            Text(goal.emoji)
                                .font(.system(size: 40))
                            Text(goal.description)
                            Spacer()
                        }
                        }
                        
                    }, header: {
                        Text("2024년 목표는 무엇인가요?")
                            .font(.system(size: 20,
                                          weight: .bold
                                         ))
                    })
                }
            }
            
        }

    }

#Preview {
    ContentView()
}
