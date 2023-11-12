//
//  NearDoctorsListView.swift
//  SwiftLabEffective
//
//  Created by  user on 13.11.2023.
//

import SwiftUI

struct Doctor {
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
                        .font(Font.custom("Poppins-Bold", size: 16))
                    Text(doctor.specialization)
                        .font(Font.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color("myGrayColor"))
                }
                Spacer()
                Image("location")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .colorMultiply(Color("myGrayColor"))
                Text(String(doctor.distance) + " KM")
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color("myGrayColor"))
            }
            Divider().frame(height: 20)
            HStack{
                Image("clock")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .colorMultiply(.yellow)
                Text(String(doctor.mark) + " (" + String(doctor.reviewsCount) + " Reviews)")
                    .font(Font.custom("Poppins-Regular", size: 12))
                    .foregroundColor(.yellow)
                Spacer()
                Image("clock")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .colorMultiply(Color("myPrimaryColor"))
                Text("Open at " + doctor.openAtTime)
                    .font(Font.custom("Poppins-Regular", size: 12))
                    .foregroundColor(Color("myPrimaryColor"))
                Spacer()
            }
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 16)
        .background(Color("myBGColor"))
        .cornerRadius(12)
        .shadow(color: Color("myGrayColor").opacity(0.04), radius: 10, x: 2, y: 12)
    }
        
}

#Preview {
    NearDoctorsListView()
}
