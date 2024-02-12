//
//  CoffeeDetailView.swift
//  CoffeeOrder
//
//  Created by Jaehoon Lee on 1/30/24.
//

import SwiftUI

struct CoffeeDetailView: View {
    @State var showNutrient = false
    var coffee: Coffee
    
    var body: some View {
        ScrollView {
            Image(coffee.image)
            
            VStack(spacing: 10) {
                
                Text(coffee.name)
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(coffee.engName)
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(coffee.desc)
                    .font(.system(size: 14))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("\(coffee.price) 원")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("알레르기 유발 요인")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(coffee.alergy ?? "없음")
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)

            }
            .padding(.horizontal, 16)
            
            Divider()
                .padding(.vertical, 10)
            
            Button(action: {
                showNutrient = true
            }, label: {
                Text("제품 영양 정보")
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
            })
            .padding(.horizontal, 20)
            .sheet(isPresented: $showNutrient, content: {
                NutrientView(nutritions: coffee.nutritions)
            })
            
            Divider()

            
            Text("비슷한 다른 메뉴")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
            
            if coffee.similars.count == 0 {
                Text("없음")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 16)
            }
            else {
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(coffee.similars, id: \.self) { item in
                            VStack(spacing: 10) {
                                Image(item)
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                                Spacer()
                            }
                        }
                    }
                }
                .contentMargins(10)
            }
        }
        .navigationTitle(coffee.name)
    }
}

#Preview {
    CoffeeDetailView(coffee: coffees[0])
}
