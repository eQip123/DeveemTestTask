//
//  ContentView.swift
//  DeliveryApplication
//
//  Created by Aidar Asanakunov on 2/3/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = ViewModelHome()
    
    
    var body: some View {
        
            VStack {
                header
                categoriesBody
                stores
                searchTextField
                cardViews
                listFood
                Spacer()
                CustomTabBar(selectedTab: $viewModel.selectedTab)
                    .padding(.bottom, 2)
            }
            .edgesIgnoringSafeArea(.bottom)
        .background(Color.whiteColor)
    }
    
    var header: some View {
        HStack {
            Button(action: {}) {
                Image("menu")
                    .shadow(color: .blackAlpha20, radius: 5, x: 0, y: 3)
            }
            Spacer()
            
            VStack(alignment: .center, spacing: 3) {
                Text("Delivering to")
                    .font(.custom(Poppins.regular.rawValue, size: 12))
                    .foregroundColor(.blackAlpha)
                HStack(alignment: .center) {
                    Button(action: {}) {
                        Text("Manas Ave")
                            .font(.custom(Poppins.medium.rawValue, size: 16))
                            .foregroundColor(.black)
                        Image("arrow")
                    }
                }
                .padding(.leading, 17)
                
            }
            .padding(.leading, 76)
            .padding(.trailing, 42)
            Spacer()
            
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 50, height: 47)
                    .foregroundColor(.white)
                    .shadow(color: .blackColor, radius: 4, y: 4)
                VStack {
                    Button(action: {}) {
                        Image("basket")
                            .padding()
                            .background(.black)
                            .cornerRadius(15)
                    }
                }
            }
        }
        .padding(.leading, 20)
        .padding(.trailing, 17)
        
    }
    var categoriesBody: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(alignment: .center, spacing: 14) {
                ForEach(viewModel.categories, id: \.self) { category in
                    CategoryCollectionView(categoryModel: category, selectedCategory: $viewModel.selectedCategory)
                }
            }
            .frame(height: 65)
            .padding(.horizontal, 17)
        }
    }
    var stores: some View {
        VStack(alignment: .leading) {
            Text("56 stores open")
                .font(.custom(Poppins.medium.rawValue, size: 16))
        }
        .padding(.horizontal, 17)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    var searchTextField: some View {
        HStack {
            HStack {
                Image("search")
                    .padding(.trailing, 10)
                    .padding(.leading, 11)
                TextField("Find restaurant by name ", text: $viewModel.search)
                    .font(.custom(Poppins.regular.rawValue, size: 12))
                    .foregroundColor(.blackAlpha)
            }
            .frame(height: 55)
            .background(Color.white)
            .cornerRadius(15)
            .padding(.leading, 17)
            .padding(.trailing, 27)
            .shadow(color: .blackAlpha20, radius: 5, x: 0, y: 6)
            Button(action: {}) {
                Image("setting")
                    .padding(.trailing, 20)
            }
        }
    }
    var cardViews: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack() {
                ForEach(viewModel.cardModels) { card in
                    CardViews(cards: card)
                }
            }
        }
    }
    var listFood: some View {
            ScrollView {
                ForEach(viewModel.listProducts) { foods in
                    ListFood(list: foods)
                }
            }
            .padding(.top, 10)
            
        
    }
}

struct CardViews: View {
    let cards: ModelCard
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(cards.name)
                .font(.custom(Poppins.bold.rawValue, size: 16))
            Text(cards.restaraunt)
                .tracking(-0.05)
                .font(.custom(Poppins.light.rawValue, size: 10))
                .foregroundColor(.gray)
            Text("Delivery: FREE • Min: $20")
                .tracking(-0.05)
                .foregroundColor(.gray)
                .font(.custom(Poppins.light.rawValue, size: 10))
            HStack {
                Image("Vector")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10, height: 10)
                Text("4.5")
                Text("•")
                Image("time")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 9, height: 9)
                Text("35 Mins")
            }
            .font(.custom(Poppins.bold.rawValue, size: 12))
        }
        .padding(15)
        .frame(width: 160, height: 180, alignment: .bottom)
        .background(Color.white)
        .cornerRadius(30)
        .frame(height: 240, alignment: .bottom)
        .overlay(
            Image(cards.img)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .shadow(color: .blackAlpha20, radius: 2.5, x: 0, y: 10),
            alignment: .top
        )
    }
}
struct ListFood: View {
    let list: ModelListFood
    var body: some View {
            ZStack(alignment: .trailing) {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 285, height: 130)
                    .foregroundColor(.white)
                Image(list.img)
                .resizable()
                .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                    .cornerRadius(100)
                    .shadow(color: .blackAlpha20, radius: 2.5, x: 0, y: 10)
            }
            .padding(.leading, 17)
        
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
