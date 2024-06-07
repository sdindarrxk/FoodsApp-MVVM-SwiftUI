//
//  FoodRow.swift
//  FoodsApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 7.06.2024.
//

import SwiftUI

struct FoodRow: View {
    var food = Food()
    
    var body: some View {
        HStack {
            FoodImage(imageName: food.imageName ?? .init())
                .frame(width: 100, height: 100)
            VStack(alignment: .leading, spacing: 20) {
                Text(food.name ?? .init())
                    .font(.title2)
                Text("\(food.price ?? .init()) ₺")
                    .foregroundColor(.red)
                    .font(.title3)
            }
        }
    }
}
