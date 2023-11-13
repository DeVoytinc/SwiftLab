//
//  CustomTabBar.swift
//  SwiftLabEffective
//
//  Created by  user on 11.11.2023.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case home
    case calendar
    case message
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
                    .colorMultiply(selectedTab == tab ? ColorTheme.BottomNavBar.BottomNavBarContent : ColorTheme.Text.Secondary)
                    
                    if selectedTab == tab{
                        Text(tabText)
                            .foregroundColor(ColorTheme.BottomNavBar.BottomNavBarContent)
                            .font(Font.custom(FontTheme.nunito, size: 14))
                    }
                    
                }
                .padding(12)
                .background(ColorTheme.BottomNavBar.BottomNavBarChip)
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
