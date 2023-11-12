//
//  CustomTabBar.swift
//  SwiftLabEffective
//
//  Created by  user on 11.11.2023.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case home
    case message
    case calendar
    case profile
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    private var tabText: String{
        switch selectedTab {
        case .home:
            return "Home"
        case .calendar:
            return "Calendar"
        case .message:
            return "Message"
        case .profile:
            return "Profile"
        }
    }

    
    var body: some View {
        HStack{
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                Spacer()
                HStack(){
                    Image(selectedTab == tab ? fillImage :
                            tab.rawValue)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .colorMultiply(selectedTab == tab ? Color("mySecondary") : Color("myGrayColor"))
                    
                    if selectedTab == tab{
                        Text(tabText)
                            .foregroundColor(Color("mySecondary"))
                            .font(Font.custom("Nunito-Regular", size: 14))
                    }
                    
                }
                .padding(12)
                .background(Color(red: 0.39, green: 0.71, blue: 1).opacity(0.1))
                .cornerRadius(12)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.1)){
                        selectedTab = tab
                    }
                }
                Spacer()
            }
        }
        .frame(width: nil, height: 60)
        .background(.white)
        
    }
    
}

#Preview {
    CustomTabBar(selectedTab: .constant(.message))
}
