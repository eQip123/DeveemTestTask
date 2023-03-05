//
//  HomeViewModel.swift
//  DeliveryApplication
//
//  Created by Aidar Asanakunov on 3/3/23.
//

import SwiftUI

class ViewModelHome: ObservableObject {
    @Published var selectedTab: Tab = .house
    @Published var selectedCategory: ModelCategory?
    @Published var isSelected = false
    @Published var search: String = ""
    
    init() {
        selectedCategory = categories.first
    }
    
    let categories: [ModelCategory] = [
        .init(title: "Delivery", image: Image("gg"), imageWhite: Image("group18")),
        .init(title: "Takeaway", image: Image("takeAway"), imageWhite: Image("takeAwayWhite")),
        .init(title: "Catering", image: Image("bellService"), imageWhite: Image("bellWhite")),
        .init(title: "Curbside", image: Image("curbside"), imageWhite: Image("curbsideWhite")),
        .init(title: "Offer", image: Image("offer"), imageWhite: Image("offerWhite"))
    ]
    
    var horizontalFood: [ModelHorizontalFood] = [
        .init(id: 1, img: "food1", name: "Tony Roma’s", restaraunt: "Ribs & Steaks"),
        .init(id: 2, img: "food2", name: "Momos", restaraunt: "Burgers & Fries"),
        .init(id: 3, img: "food1", name: "Tony Roma’s", restaraunt: "Ribs & Steaks"),
        .init(id: 4, img: "food2", name: "Momos", restaraunt: "Burgers & Fries")
    ]
    var listProducts: [ModelListFood] = [
        .init(id: 1, img: "food3", name: "Paul", restaraunt: "French Pasta"),
        .init(id: 2, img: "food2", name: "Momos", restaraunt: "Burgers & Fries")
    ]
}
