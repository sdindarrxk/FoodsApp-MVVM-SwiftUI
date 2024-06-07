//
//  HomeViewModelAlamofire.swift
//  FoodsApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 7.06.2024.
//

import Foundation
import Alamofire

class HomeViewModelAlamofire: ObservableObject {
    @Published var foods = [Food]()
    
    func loadFoods() {
        guard let url = URL(string: "http://kasimadalan.pe.hu/yemekler/tumYemekleriGetir.php") else { return }
        
        AF.request(url, method: .get).response { response in
            guard let data = response.data else { return }
            
            do {
                let response = try JSONDecoder().decode(FoodResponse.self, from: data)
                guard let list = response.list else { return }
                DispatchQueue.main.async {
                    self.foods = list
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
