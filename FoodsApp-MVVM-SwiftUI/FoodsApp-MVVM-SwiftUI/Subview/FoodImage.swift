//
//  FoodImage.swift
//  FoodsApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 7.06.2024.
//

import SwiftUI

struct FoodImage: View {
    var imageName: String
    
    var body: some View {
        AsyncImage(url: URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(imageName)")) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
    }
}

