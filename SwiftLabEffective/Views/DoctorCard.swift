//
//  DoctorCard.swift
//  SwiftLabEffective
//
//  Created by  user on 13.11.2023.
//

import SwiftUI

struct DoctorCard: View {
    var body: some View {
        Button (action: {
            print("DoctorCard Tapped")
        }){
            VStack (alignment: .leading) {
                
                
                HStack{
                    Image("doctor1")
                        .resizable()
                        .frame(
                            width: Sizes.AvatarSizeDoctor,
                            height: Sizes.AvatarSizeDoctor)
                    VStack (alignment: .leading){
                        Text("Dr. Imran Syahir")
                            .font(Font.custom(
                                FontTheme.poppinsBold,
                                size: Sizes.TextLarge))
                            .foregroundColor(.white)
                        Text("General Doctor")
                            .font(Font.custom(
                                FontTheme.poppinsRegular,
                                size: Sizes.TextMedium))
                            .foregroundColor(ColorTheme.TextLightBlue)
                    }
                    Spacer()
                    Image("arrow-right")
                        .foregroundColor(ColorTheme.TextWhite)
                }
                
                
                Divider()
                    .overlay(ColorTheme.TextWhite.opacity(0.50))
                    .frame(height: 16)
                
                
                
                HStack{
                    Image("calendar")
                        .resizable()
                        .frame(width: 16, height: 16)
                    Text("Sunday, 12 June")
                        .foregroundColor(ColorTheme.TextWhite)
                        .font(Font.custom(
                            FontTheme.poppinsRegular,
                            size: Sizes.TextSmall))
                    Spacer()
                    Image("clock")
                        .resizable()
                        .frame(width: 16, height: 16)
                    Text("11:00 - 12:00 AM")
                        .foregroundColor(ColorTheme.TextWhite)
                        .font(Font.custom(
                            FontTheme.poppinsRegular,
                            size: Sizes.TextSmall))
                        .padding(.trailing, 24)
                }
                
                
            }
            .padding(20)
            .background(ColorTheme.Primary)
            .cornerRadius(12)
        }
        
    }
}

#Preview {
    DoctorCard()
}
