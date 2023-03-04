//
//  ViewModelSplash.swift
//  DeliveryApplication
//
//  Created by Aidar Asanakunov on 3/3/23.
//

import SwiftUI
class SplashScreenViewModel: ObservableObject {
    @Published var isActive = false
    
    func startAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            withAnimation {
                self.isActive = true
            }
        }
    }
}
