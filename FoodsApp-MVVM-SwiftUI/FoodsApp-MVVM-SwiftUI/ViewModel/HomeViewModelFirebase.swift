//
//  HomeViewModelFirebase.swift
//  FoodsApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 8.06.2024.
//

import Foundation
import Firebase

class HomeViewModelFirebase: ObservableObject {
    @Published var foods = [Food]()
    
    var ref = Database.database().reference().child("yemekler")
    
    func loadFoods() {
        ref.observe(.value) { snapshot in
            var list = [Food]()
            
            if let datum = snapshot.value as? [String: AnyObject] {
                for data in datum {
                    if let dict = data.value as? NSDictionary {
                        let id = data.key
                        let name = dict["yemek_adi"] as? String ?? ""
                        let imageName = dict["yemek_resim_adi"] as? String ?? ""
                        let price = dict["yemek_fiyat"] as? Int ?? 0
                        
                        let food = Food(id: id, name: name, imageName: imageName, price: price)
                        list.append(food)
                    }
                }
            }
            DispatchQueue.main.async {
                self.foods = list
            }
        }
    }
}
