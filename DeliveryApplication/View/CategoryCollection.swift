//
//  CategoryCollection.swift
//  DeliveryApplication
//
//  Created by Aidar Asanakunov on 3/3/23.
//

import SwiftUI
struct CategoryCollectionView: View {
    let categoryModel: ModelCategory
    @StateObject private var viewModel = ViewModelHome()
    @Binding var selectedCategory: ModelCategory?
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: selectedCategory == categoryModel ? 85 : 50, height: 47)
                .foregroundColor(selectedCategory == categoryModel ? Color.blackColor : .white)
                .shadow(color: .blackAlpha25, radius: 4, y: 4)
            
            HStack(spacing: 3) {
                if selectedCategory == categoryModel {
                    categoryModel.imageWhite
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                    Text(categoryModel.title)
                        .font(.custom(Poppins.medium.rawValue, size: 10))
                        .foregroundColor(.white)
                } else {
                    categoryModel.image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                }
            }
            .onTapGesture {
                withAnimation {
                    if selectedCategory == categoryModel {
                        selectedCategory = nil
                    } else {
                        selectedCategory = categoryModel
                    }
                    viewModel.isSelected.toggle()
                }
            }
            
        }
    }
}
