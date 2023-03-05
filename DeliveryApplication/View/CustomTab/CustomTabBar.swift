//
//  CustomTabBar.swift
//  DeliveryApplication
//
//  Created by Aidar Asanakunov on 2/3/23.
//
import SwiftUI
struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue
    }

    @State var tabColor = Color.brown

    var body: some View {
        VStack{
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(selectedTab == tab ? fillImage : tab.rawValue)
                        .padding(15)
                        .scaleEffect(selectedTab == tab ? 1.05 : 1.0)
                        .background(selectedTab == tab ? tabColor : .clear)
                        .clipShape(Circle())
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 75)
            .background(Color.blackColor)
            .cornerRadius(35)
            .padding()
            .shadow(color: .black.opacity(0.6), radius: 7, x: 0, y: 8)
        }
    }
}



struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.house))
    }
}
