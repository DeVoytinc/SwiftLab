import SwiftUI

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


#Preview {
    NearDoctorsListView()
}
