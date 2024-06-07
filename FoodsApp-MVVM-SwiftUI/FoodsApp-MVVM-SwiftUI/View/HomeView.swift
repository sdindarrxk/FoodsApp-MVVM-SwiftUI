//
//  HomeView.swift
//  FoodsApp-MVVM-SwiftUI
//
//  Created by Sabri DİNDAR on 7.06.2024.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModelURLSession()
    
    init() {
        viewModel.loadFoods()
    }
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.foods) { food in
                    NavigationLink(destination: DetailView(food: food)) {
                        FoodRow(food: food)
                    }
                }
            }.navigationTitle("Foods")
        }
    }
}

#Preview {
    HomeView()
}
