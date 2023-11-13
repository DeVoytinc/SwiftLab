//
//  NearDoctorsListView.swift
//  SwiftLabEffective
//
//  Created by  user on 13.11.2023.
//

import SwiftUI

struct Doctor {
    var id: UUID = UUID()
    var imageName: String
    var name: String
    var specialization: String
    var distance: Float
    var mark: Float
    var reviewsCount: Int
    var openAtTime: String
}

struct NearDoctorsListView: View {
    
    let doctors: [Doctor] = [
        Doctor(imageName: "doctor2", name: "Dr. Joseph Brostito", specialization: "Dental Specialist", distance: 1.2, mark: 4.8, reviewsCount: 120, openAtTime: "17:00"),
        Doctor(imageName: "doctor1", name: "Dr. Imran Syahir", specialization: "General Doctor", distance: 1.2, mark: 4.8, reviewsCount: 120, openAtTime: "17:00"),
    ]
    
    
    var body: some View {
        VStack{
            ForEach(doctors.indices) { index in
                DoctorView(doctor: doctors[index])
                
                if index != doctors.indices.last{
                    Spacer().frame(height: 20)
                }
            }
        }
    }
}

struct DoctorView: View {
    var doctor: Doctor
    
    var body: some View {
        
        VStack{
            HStack{
                Image(doctor.imageName)
                    .resizable()
                    .frame(width: 48, height: 48)
                VStack (alignment: .leading) {
                    Text(doctor.name)
                        .font(Font.custom(FontTheme.poppinsBold, size: 16))
                        .foregroundColor(ColorTheme.Text.Primary)
                    Text(doctor.specialization)
                        .font(Font.custom(FontTheme.poppinsRegular, size: 14))
                        .foregroundColor(ColorTheme.Text.Secondary)
                }
                Spacer()
                Image("location")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .colorMultiply(ColorTheme.Text.Secondary)
                Text(String(doctor.distance) + " KM")
                    .font(Font.custom(FontTheme.poppinsRegular, size: 14))
                    .foregroundColor(ColorTheme.Text.Secondary)
            }
            Divider().frame(height: 20)
            HStack{
                Image("clock")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .colorMultiply(ColorTheme.Text.Yellow)
                Text(String(doctor.mark) + " (" + String(doctor.reviewsCount) + " Reviews)")
                    .font(Font.custom(FontTheme.poppinsRegular, size: 12))
                    .foregroundColor(ColorTheme.Text.Yellow)
                Spacer()
                Image("clock")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .colorMultiply(ColorTheme.Primary)
                Text("Open at " + doctor.openAtTime)
                    .font(Font.custom(FontTheme.poppinsRegular, size: 12))
                    .foregroundColor(ColorTheme.Primary)
                Spacer()
            }
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 16)
        .background(ColorTheme.BG.Background)
        .cornerRadius(12)
        .shadow(color: ColorTheme.Text.Secondary.opacity(0.04), radius: 10, x: 2, y: 12)
    }
        
}

#Preview {
    NearDoctorsListView()
}
