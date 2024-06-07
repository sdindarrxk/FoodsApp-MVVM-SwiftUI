//
//  HomeViewModel.swift
//  FoodsApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 7.06.2024.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var foods = [Food]()
    
    func loadFoods() {
        var list = [Food]()
        let y1 = Food(id: 1, name: "Ayran", imageName: "ayran", price: 8)
        let y2 = Food(id: 2, name: "Baklava", imageName: "baklava", price: 70)
        let y3 = Food(id: 3, name: "Fanta", imageName: "fanta", price: 10)
        let y4 = Food(id: 4, name: "Kadayıf", imageName: "kadayif", price: 50)
        let y5 = Food(id: 5, name: "Köfte", imageName: "kofte", price: 60)
        let y6 = Food(id: 6, name: "Makarna", imageName: "makarna", price: 55)
        list.append(y1)
        list.append(y2)
        list.append(y3)
        list.append(y4)
        list.append(y5)
        list.append(y6)
        
        foods = list
    }
}
