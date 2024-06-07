//
//  FoodResponse.swift
//  FoodsApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 7.06.2024.
//

import Foundation

class FoodResponse: Decodable {
    var list: [Food]?
    var success: Int?
    
    enum CodingKeys: String, CodingKey {
        case list = "yemekler"
        case success
    }
}
