//
//  ContentView.swift
//  DeliveryApplication
//
//  Created by Aidar Asanakunov on 2/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("food1")
            Text("Hello, World!")
                .font(.custom("Poppins-Bold", size: 68))
        }
        init() {
            for family in UIFont.familyNames.sorted() {
                let names = UIFont.fontNames(forFamilyName: family)
                print("family: \(family) Font names: \(names)")
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
