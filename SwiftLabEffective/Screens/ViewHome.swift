//
//  ViewHome.swift
//  SwiftLabEffective
//
//  Created by  user on 11.11.2023.
//

import Foundation
import SwiftUI

struct ViewHome: View {
    var body: some View{
        ZStack{
            ScrollView (showsIndicators: false) {
                VStack (alignment: .leading, spacing: 20){
                    WelcomeView()
                    DoctorCard()
                    CustomTextField()
                    CategoryRowView()
                    Spacer().frame(height: 5)
                    Text("Near Doctor")
                        .font(Font.custom(
                            FontTheme.poppinsBold,
                            size: Sizes.TextLarge))
                        .fontWeight(.bold)
                        .foregroundColor(ColorTheme.TextPrimary)
                    NearDoctorsListView()
                    Spacer().frame(height: 50)
                }
            }
            
        }
        .padding([.leading, .trailing], 24)
    }
}

struct ViewHome_Preview: PreviewProvider{
    static var previews: some View{
        ViewHome()
    }
}
