//
//  SplashScreenView.swift
//  DeliveryApplication
//
//  Created by Aidar Asanakunov on 2/3/23.
//

import SwiftUI

struct SplashScreenView: View {
    @StateObject private var viewModel = SplashScreenViewModel()
    
    var body: some View {
        if viewModel.isActive {
            HomeView()
        } else {
            ZStack {
                Image("splashBackground")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                content
            }
            .onAppear() {
                viewModel.startAnimation()
            }
        }
    }
    
    var content: some View {
        VStack() {
            HStack {
                Image("line")
                Text("DELIVEREE")
                    .font(.custom(Poppins.bold.rawValue, size: 35))
                    .foregroundColor(.whiteColor)
            }
            Text("Your favourite local restaurants \n")
                .font(.custom(Poppins.light.rawValue, size: 15))
                .foregroundColor(.whiteColor) +
            Text("delivered")
                .font(.custom(Poppins.bold.rawValue, size: 15))
                .foregroundColor(.whiteColor) +
            Text(" to your doorstep.")
                .font(.custom(Poppins.light.rawValue, size: 15))
                .foregroundColor(.whiteColor)
        }
        .padding(.bottom, 50)
        .multilineTextAlignment(.center)
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
