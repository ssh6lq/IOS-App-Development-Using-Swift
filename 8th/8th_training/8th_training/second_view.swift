//
//  second_view.swift
//  8th_training
//
//  Created by usg on 2/11/24.
//

import SwiftUI

struct second_view: View {
    
    var name: String = "소희"
    var sex: String = "여성"
    var hobby: String = "ott 시청하기"
    
    var body: some View {
            VStack{

                List{
                    Section(content: {
                        Image("char")
                        Text("이름 : \(name) ")
                        Text("성별 : \(sex) ")
                        Text("취미 : \(hobby)")
                        NavigationStack{
                            NavigationLink(destination: {
                                third_view()}, label: {
                                    Text("다음 페이지")
                                })
                        }
                    }, header: {
                        Text("Introduce")
                            .font(.title)
                            .bold()
                    })
                    
                }
                

                
            }

  
    }
}

#Preview {
    second_view()
}
