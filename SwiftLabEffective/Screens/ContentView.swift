//
//  ContentView.swift
//  SwiftLabEffective
//
//  Created by  user on 11.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack{
            VStack{
                TabView(selection: $selectTab){
                    ViewHome()
                        .tag(Tab.home)
                        .accessibilityValue(Text("HomePage"))
                    ViewCalendar()
                        .tag(Tab.calendar)
                        .accessibilityValue(Text("CalendarPage"))
                    ViewMessage()
                        .tag(Tab.message)
                        .accessibilityValue(Text("MessagePage"))
                    ViewProfile()
                        .tag(Tab.profile)
                        .accessibilityValue(Text("ProfilePage"))
                }
            }
            VStack{
                Spacer()
                CustomTabBar(selectedTab: $selectTab)
            }
        }
    }
}

#Preview {
    ContentView()
}
