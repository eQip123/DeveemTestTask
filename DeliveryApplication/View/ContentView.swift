//
//  ContentView.swift
//  DeliveryApplication
//
//  Created by Aidar Asanakunov on 2/3/23.
//

import SwiftUI

struct ContentView: View {
        var body: some View {
            VStack {
                HStack {
                    Button(action: {}) {
                        Image("menu")
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 3) {
                        Text("Delivering to")
                            .font(.custom(Poppins.regular.rawValue, size: 12))
                            .foregroundColor(.blackAlpha)
                        HStack {
                            Text("Manas Ave")
                                .font(.custom(Poppins.medium.rawValue, size: 16))
                            Image("arrow")
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image("basket")
                            .padding()
                            .background(.black)
                            .cornerRadius(20)
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal)
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
