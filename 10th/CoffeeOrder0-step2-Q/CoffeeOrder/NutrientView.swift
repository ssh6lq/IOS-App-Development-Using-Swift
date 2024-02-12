//
//  NutrientView.swift
//  CoffeeOrder-Step2
//
//  Created by Jaehoon Lee on 2/2/24.
//

import SwiftUI

struct NutrientItemView: View {
    var name: String
    var amount: String
    var unit: String

    var body: some View {
        HStack(spacing: 0) {
            Text(name)
                .font(.system(size: 13))
                .frame(alignment: .leading)
            Spacer()
            Text(amount)
                .font(.system(size: 13))
            Text(unit)
                .font(.system(size: 13))
        }
    }
}

struct NutrientView: View {
    let nutritions: [Nutrition]

    var body: some View {
        VStack(spacing: 20) {
            Text("제품 영양 정보")
                .font(.title3)
            
            VStack(spacing: 0) {
                HStack {
                    ForEach(nutritions, id: \.size) { nutrition in
                        Button(action: {
                            
                        }, label: {
                            Text(nutrition.size)
                        })
                    }
                    Spacer()
                }
                                
                VStack(spacing: 16) {
                    NutrientItemView(name: "용량", amount: "\(nutritions[0].amount)", unit: "ml")
                }
                .padding(.horizontal, 10)
                .padding(.top, 30)
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    NutrientView(nutritions: coffees[0].nutritions)
}
