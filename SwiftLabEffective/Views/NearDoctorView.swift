import SwiftUI

struct DoctorView: View {
    var doctor: Doctor
    
    var body: some View {
        
        VStack{
            
            
            HStack{
                Image(doctor.imageName)
                    .resizable()
                    .frame(
                        width: Sizes.AvatarSizeDoctor,
                        height: Sizes.AvatarSizeDoctor)
                VStack (alignment: .leading) {
                    Text(doctor.name)
                        .font(Font.custom(
                            FontTheme.poppinsBold,
                            size: Sizes.TextLarge))
                        .foregroundColor(ColorTheme.TextPrimary)
                    Text(doctor.specialization)
                        .font(Font.custom(
                            FontTheme.poppinsRegular,
                            size: Sizes.TextMedium))
                        .foregroundColor(ColorTheme.TextSecondary)
                }
                Spacer()
                Image("location")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .colorMultiply(ColorTheme.TextSecondary)
                Text(String(doctor.distance) + " KM")
                    .font(Font.custom(
                        FontTheme.poppinsRegular,
                        size: Sizes.TextMedium))
                    .foregroundColor(ColorTheme.TextSecondary)
            }
            
            
            Divider().frame(height: 20)
            
            
            HStack{
                Image("clock")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .colorMultiply(ColorTheme.TextYellow)
                Text(String(doctor.mark) + " (" + String(doctor.reviewsCount) + " Reviews)")
                    .font(Font.custom(
                        FontTheme.poppinsRegular,
                        size: Sizes.TextSmall))
                    .foregroundColor(ColorTheme.TextYellow)
                Spacer()
                Image("clock")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .colorMultiply(ColorTheme.Primary)
                Text("Open at " + doctor.openAtTime)
                    .font(Font.custom(
                        FontTheme.poppinsRegular,
                        size: Sizes.TextSmall))
                    .foregroundColor(ColorTheme.Primary)
                Spacer()
            }
            
            
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 16)
        .background(ColorTheme.Background)
        .cornerRadius(12)
        .shadow(color: ColorTheme.TextSecondary.opacity(0.04), radius: 10, x: 2, y: 12)
    }
        
}

#Preview{
    DoctorView(
        doctor: Doctor(
            imageName: "doctor2",
            name: "Dr. Joseph Brostito",
            specialization: "Dental Specialist",
            distance: 1.2,
            mark: 4.8,
            reviewsCount: 120,
            openAtTime: "17:00"
        )
    )
}
