//
//  WelcomeView.swift
//  SwiftLabEffective
//
//  Created by  user on 13.11.2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        HStack{
            VStack (alignment: .leading) {
                Text("Hello,")
                    .font(Font.custom("Poppins-Regular", size: 16))
                    .foregroundColor(Color("myGrayColor"))
                Text("Hi James").font(Font.custom("Poppins-Bold", size: 20))
            }
            Spacer()
            Image("avatar")
                .resizable()
                .frame(width: 56, height: 56)
        }
    }
}

#Preview {
    WelcomeView()
}
