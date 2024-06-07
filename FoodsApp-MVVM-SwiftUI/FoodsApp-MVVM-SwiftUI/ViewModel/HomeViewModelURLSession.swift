//
//  HomeViewModelURLSession.swift
//  FoodsApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 7.06.2024.
//

import Foundation

class HomeViewModelURLSession: ObservableObject {
    @Published var foods = [Food]()
    
    func loadFoods() {
        guard let url = URL(string: "http://kasimadalan.pe.hu/yemekler/tumYemekleriGetir.php") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else { return }
            do {
                let response = try JSONDecoder().decode(FoodResponse.self, from: data)
                guard let list = response.list else { return }
                DispatchQueue.main.async {
                    self.foods = list
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
