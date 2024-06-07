//
//  Food.swift
//  FoodsApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 7.06.2024.
//

import Foundation

class Food: Identifiable, Codable {
    var id: String?
    var name: String?
    var imageName: String?
    var price: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "yemek_id"
        case name = "yemek_adi"
        case imageName = "yemek_resim_adi"
        case price = "yemek_fiyat"
    }
    
    init() {
        
    }
    
    init(id: String, name: String, imageName: String, price: String) {
        self.id = id
        self.name = name
        self.imageName = imageName
        self.price = price
    }
}
