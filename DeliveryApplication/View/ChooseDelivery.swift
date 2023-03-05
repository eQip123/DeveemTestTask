//
//  ChooseDelivery.swift
//  DeliveryApplication
//
//  Created by Aidar Asanakunov on 5/3/23.
//

import SwiftUI

struct ChooseDelivery: View {
    
    var body: some View {
            VStack {
                VStack {
                    
                    VStack(alignment: .leading) {
                    
                        Text("Choose delivery location")
                            .font(.custom(Poppins.semiBold.rawValue, size: 18))
                            .foregroundColor(.black)
                    
                        HStack(alignment: .center, spacing: 10) {
                    
                            Image("region")
                            VStack(alignment: .leading, spacing: -2) {
                                Text("Deliver to current location")
                                    .font(.custom(Poppins.medium.rawValue, size: 16))
                                    .foregroundColor(.black)
                                Text("Manas ave")
                                    .font(.custom(Poppins.regular.rawValue, size: 12))
                                    .foregroundColor(Color.blackAlpha50)
                            }
                        }
                        Divider()
                    
                        HStack(alignment: .center, spacing: 10) {
                    
                            Image("marker")
                            VStack(alignment: .leading, spacing: -2) {
                                Text("Deliver to different location")
                                    .font(.custom(Poppins.medium.rawValue, size: 16))
                                Text("Choose location on the map")
                                    .font(.custom(Poppins.regular.rawValue, size: 12))
                                    .foregroundColor(Color.blackAlpha50)
                            }
                        }
                        Divider()
                        
                    
                    }
                    .padding()
                    
                    
                    VStack(alignment: .leading) {
                    
                        Text("Saved Addresses")
                            .font(.custom(Poppins.semiBold.rawValue, size: 18))
                    
                        HStack(alignment: .center, spacing: 10) {
                            Image("home")
                            VStack(alignment: .leading, spacing: -2) {
                                Text("Home")
                                .font(.custom(Poppins.medium.rawValue, size: 16))
                                Text("Jukeev-Pudovkin St 43, apt #12")
                                    .font(.custom(Poppins.regular.rawValue, size: 12))
                                    .foregroundColor(Color.blackAlpha50)
                            }
                            Spacer()
                            Image("threePoints")
                    
                        }
                        Divider()
                    
                        HStack(alignment: .center, spacing: 10) {
                    
                            Image("work")
                            VStack(alignment: .leading, spacing: -2) {
                                Text("Work")
                                    .font(.custom(Poppins.medium.rawValue, size: 16))
                                Text("Manas Ave 32, floor 7, office #703")
                                    .font(.custom(Poppins.regular.rawValue, size: 12))
                                    .foregroundColor(Color.blackAlpha50)
                            }
                            Spacer()
                            Image("threePoints")
                    
                        }
                        Divider()
                    
                        HStack(alignment: .center, spacing: 10) {
                    
                            Image("hotel")
                            VStack(alignment: .leading, spacing: -2) {
                                Text("Hotel")
                                    .font(.custom(Poppins.medium.rawValue, size: 16))
                                Text("Frunze St 50, floor 10, room #1011")
                                    .font(.custom(Poppins.regular.rawValue, size: 12))
                                    .foregroundColor(Color.blackAlpha50)
                            }
                            Spacer()
                            Image("threePoints")
                        }
                    
                    }
                    .padding(.horizontal)


                }
                .frame(maxWidth: .infinity)
                .frame(height: 488)
                .background(Color.white)
                    .clipShape(RoundedCorner(radius: 20, corners: [.bottomLeft, .bottomRight]))
                Spacer()
            }
        
    }
}

struct MyAidar: PreviewProvider {
    static var previews: some View {
        ChooseDelivery()
    }
}
