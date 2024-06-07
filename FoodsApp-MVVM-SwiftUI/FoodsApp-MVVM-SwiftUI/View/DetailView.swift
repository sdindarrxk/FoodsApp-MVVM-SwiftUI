//
//  DetailView.swift
//  FoodsApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 7.06.2024.
//

import SwiftUI

struct DetailView: View {
    var food = Food()
    
    var body: some View {
        VStack(spacing: 60) {
            FoodImage(imageName: food.imageName ?? .init())
                .frame(width: 250, height: 250)
            
            Text("\(food.price ?? .init()) ₺")
                .font(.system(size: 60))
                .foregroundColor(.red)
            
            Button("Add To Cart") { 
                print("\(food.name ?? .init()) succesfully added.")
            }
            .foregroundColor(.white)
            .frame(width: 250,height: 50)
            .background(.red)
            .cornerRadius(20)
        }
        .navigationTitle(food.name ?? .init())
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailView()
}
