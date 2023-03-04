//
//  Model.swift
//  DeliveryApplication
//
//  Created by Aidar Asanakunov on 3/3/23.
//

import SwiftUI
struct ModelCategory: Hashable {
    
    let id = UUID()
    let title: String
    let image: Image
    let imageWhite: Image
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}
