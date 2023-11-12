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
            VStack{
                WelcomeView()
                Spacer().frame(height: 25)
                DoctorCard()
                Spacer().frame(height: 20)
                CustomTextField()
                
                    
                Spacer()
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
