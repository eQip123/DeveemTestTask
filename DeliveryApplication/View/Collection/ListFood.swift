//
//  ListFood.swift
//  DeliveryApplication
//
//  Created by Aidar Asanakunov on 5/3/23.
//

import SwiftUI
struct ListFood: View {
    let list: ModelListFood
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing:0 ) {
                Text(list.name)
                    .font(.custom(Poppins.bold.rawValue, size: 16))
                    .padding(.top, 20)
                Text(list.restaraunt)
                    .foregroundColor(.grayColor)
                    .font(.custom(Poppins.light.rawValue, size: 11))
                    .tracking(-0.5)
                Text("Delivery: FREE • Minimum: $0")
                    .foregroundColor(.grayColor)
                    .font(.custom(Poppins.light.rawValue, size: 11))
                    .tracking(-0.5)
                VStack {}
                    .frame(minHeight: 20)
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
                .font(.custom(Poppins.bold.rawValue, size: 12))
                .padding(.leading, 90)
            }
            .padding(.leading, 17)
            .frame(width: 285, height: 130, alignment: .leading)
            .background(Color.white)
            .cornerRadius(30)
            Spacer()
                .overlay(
                    Image(list.img)
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .shadow(color: .blackAlpha20, radius: 2.5, x: 0, y: 9.5),
                    alignment: .trailing
                )
                .padding(.trailing, 19)
        }
        .padding(.leading, 17)
    }
}
