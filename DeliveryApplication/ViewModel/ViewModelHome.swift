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
    
    var cardModels: [ModelCard] = [
        .init(id: 1, img: "food1", name: "Tony Roma’s", restaraunt: "Ribs & Steaks", price: "$20"),
        .init(id: 2, img: "food2", name: "McDonald's", restaraunt: "Burgers & Fries", price: "$10"),
        .init(id: 3, img: "food1", name: "Tony Roma’s", restaraunt: "Ribs & Steaks", price: "$20"),
        .init(id: 4, img: "food2", name: "McDonald's", restaraunt: "Burgers & Fries", price: "$10")
    ]
    var listProducts: [ModelListFood] = [
        .init(id: 1, img: "food3", name: "Tony Roma’s", restaraunt: "Ribs & Steaks", price: "$20"),
        .init(id: 2, img: "food2", name: "McDonald's", restaraunt: "Burgers & Fries", price: "$10")
    ]
}
