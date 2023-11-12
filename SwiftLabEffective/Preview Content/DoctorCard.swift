//
//  DoctorCard.swift
//  SwiftLabEffective
//
//  Created by  user on 13.11.2023.
//

import SwiftUI

struct DoctorCard: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack{
                Image("doctor1")
                    .resizable()
                    .frame(width: 48, height: 48)
                VStack (alignment: .leading){
                    Text("Dr. Imran Syahir")
                        .font(Font.custom("Poppins-Bold", size: 16))
                        .foregroundColor(.white)
                    Text("General Doctor")
                        .font(Font.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color("myLightBlue"))
                }
                Spacer()
                Image("arrow-right")
                    .foregroundColor(.white)
            }
            Divider()
                .overlay(.white.opacity(0.50))
                .frame(height: 16)
            HStack{
                Image("calendar")
                    .resizable()
                    .frame(width: 16, height: 16)
                Text("Sunday, 12 June")
                    .foregroundColor(.white)
                    .font(Font.custom("Poppins-Regular", size: 12))
                Spacer()
                Image("clock")
                    .resizable()
                    .frame(width: 16, height: 16)
                Text("11:00 - 12:00 AM")
                    .foregroundColor(.white)
                    .font(Font.custom("Poppins-Regular", size: 12))
                    .padding(.trailing, 24)
            }
        }
        .padding(20)
        .background(Color(red: 0.28, green: 0.58, blue: 1))
        .cornerRadius(12)
    }
}

#Preview {
    DoctorCard()
}
