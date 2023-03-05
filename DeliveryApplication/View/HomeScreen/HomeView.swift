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
        ZStack {
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
            if viewModel.showManasView {
                ChooseDelivery()
                    .edgesIgnoringSafeArea(.all)
                    .background(Color.black.opacity(0.65))
                    .transition(.opacity)
                    .onTapGesture {
                        withAnimation {
                            viewModel.showManasView = false
                        }
                    }
            }
        }
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
                    .foregroundColor(.blackAlpha50)
                HStack(alignment: .center) {
                    Button(action: {
                        withAnimation(.default) {
                            viewModel.showManasView.toggle()
                        }
                    }) {
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
                VStack {
                    Button(action: {}) {
                        VStack {
                            Image("basket")
                                .padding()
                                .background(.black)
                                .cornerRadius(15)
                            
                        }
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
                    CategoryCollection(categoryModel: category, selectedCategory: $viewModel.selectedCategory)
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
                    .foregroundColor(.blackAlpha50)
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
                ForEach(viewModel.horizontalFood) { card in
                    HorizontalFood(cards: card)
                }
            }
        }
    }
    var listFood: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(viewModel.listProducts) { foods in
                ListFood(list: foods)
            }
        }
        .padding(.vertical, 5.7)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
