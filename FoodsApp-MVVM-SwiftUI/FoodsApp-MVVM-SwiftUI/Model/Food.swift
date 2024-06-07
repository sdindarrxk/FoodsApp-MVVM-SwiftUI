//
//  Food.swift
//  FoodsApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 7.06.2024.
//

import Foundation

class Food: Identifiable {
    var id: Int?
    var name: String?
    var imageName: String?
    var price: Int?
    
    init() {
        
    }
    
    init(id: Int, name: String, imageName: String, price: Int) {
        self.id = id
        self.name = name
        self.imageName = imageName
        self.price = price
    }
}
