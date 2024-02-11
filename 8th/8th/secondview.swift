//
//  secondview.swift
//  8th
//
//  Created by usg on 2/11/24.
//

import SwiftUI

struct secondview: View {
    
    var name: String
    
    var body: some View {
        VStack{
            Text("\(name)님! 두번째 화면에 오신 것을 환영합니다!")
            Text("두번째 화면")
                .font(.largeTitle)
        }

    }
}

#Preview {
    secondview(name: "소희")
}
