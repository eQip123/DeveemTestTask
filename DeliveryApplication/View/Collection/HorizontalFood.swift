//
//  HorizontalFood.swift
//  DeliveryApplication
//
//  Created by Aidar Asanakunov on 5/3/23.
//

import SwiftUI
struct HorizontalFood: View {
    let cards: ModelHorizontalFood
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(cards.name)
                .font(.custom(Poppins.bold.rawValue, size: 16))
            Text(cards.restaraunt)
                .font(.custom(Poppins.light.rawValue, size: 10))
                .tracking(-0.5)
                .foregroundColor(.grayColor)
            Text("Delivery: FREE • Min: $20")
                .foregroundColor(.grayColor)
                .font(.custom(Poppins.light.rawValue, size: 10))
                .tracking(-0.5)
            HStack(spacing: 3) {
                Image("Vector")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10, height: 10)
                Text("4.5")
                Text("•")
                    .foregroundColor(.grayColor)
                Image("time")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 9, height: 9)
                Text("35 Mins")
            }
            .padding(.top, 3.5)
            .font(.custom(Poppins.bold.rawValue, size: 12))
            .padding(.horizontal, 12)
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
        .padding(.top, 12)
        .padding(.horizontal, 17)
    }
}
