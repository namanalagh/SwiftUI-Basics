//
//  DoctorHomePage.swift
//  SwiftUI Basics
//
//  Created by Naman Alagh on 22/04/23.
//

import SwiftUI

struct DoctorHomePage: View {
    var body: some View {
        TabView{
            PageContent()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ContentView()
                .tabItem{
                    Label("Schedule", systemImage: "calendar.day.timeline.leading")
                        .foregroundColor(.black)
                }
            LoginPage()
                .tabItem{
                    Label("Profile", systemImage: "person.circle")
                }
                .onAppear {
                                // correct the transparency bug for Tab bars
                                let tabBarAppearance = UITabBarAppearance()
                                tabBarAppearance.configureWithOpaqueBackground()
                                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
                                // correct the transparency bug for Navigation bars
                                let navigationBarAppearance = UINavigationBarAppearance()
                                navigationBarAppearance.configureWithOpaqueBackground()
                                UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
                            }
        }
        
        
    }
}

struct BlueLine: View {
    var body: some View{
        HStack{
            Spacer()
            
            Rectangle()
                .foregroundColor(Color.blue.opacity(0.2))
                .frame(width: 360, height: 1)
            
            Spacer()
        }
    }
}


struct PageContent: View {
    var body: some View{
        
        VStack(alignment: .leading){
            
            UserDetails()
                .padding(.leading,10)
                .padding(.bottom, 10)
            
            ScrollView(showsIndicators: false){
                HStack{
                    Text("Upcoming")
                        .padding(.leading,10)
                        .font(.title2)
                        .foregroundColor(.black)
                    Spacer()
                }
                
                
                BlueLine()
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 0){
                        ForEach(0..<5) {index in
                            UpcomingCard()
                                .padding(.leading,10)
                        }
                        .padding(.top, -25)
                        .frame(height: 275)
                    }
                    .padding(.trailing, 10)
                }
                
                HStack{
                    Text("Later this day")
                        .padding(.leading)
                        .font(.title2)
                        .foregroundColor(.black)
                    Spacer()
                }
                
                
                BlueLine()

                VStack(alignment: .center){
                    ForEach(0..<5){index in
                        LaterThisDayCard()
                    }
                }
            }
        }
    }
}
struct UpcomingCard: View {
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 250, height: 250)
                .shadow(radius: 5, x:0, y: 5)
            
            VStack(alignment: .leading){
                Text("Mr. John Johnson")
                    .frame(width: 150, alignment: .leading)
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.heavy)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color.white.opacity(0.3))
                        
                    
                    HStack{
                        Image(systemName: "calendar.circle")
                            .foregroundColor(.white)
                            .font(.title)
                        
                        Text("Saturday, 12 May")
                            .frame(width: 150)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color.white.opacity(0.3))
                    
                    HStack{
                        Image(systemName: "clock")
                            .foregroundColor(.white)
                            .font(.title)
                        
                        Text("10:30 AM")
                            .frame(width: 150)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }
            }
        }
    }
}

struct LaterThisDayCard: View {
    var body: some View {
        HStack{
            Spacer()
            ZStack(alignment: .center){
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 350, height:75)
                    .foregroundColor(Color.blue)
                    .shadow(radius: 5, y: 5)
                RoundedRectangle(cornerRadius: 9)
                    .frame(width: 347, height:73)
                    .foregroundColor(Color.white)
                HStack{
                    Image(systemName: "circle.fill")
                        .font(.title)
                    
                    Spacer()
                    
                    VStack(alignment: .leading){
                        Text("Mrs. Jenna Tools")
                            .font(.title3)
                        HStack{
                            Text("21")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            
                            Text("|")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            
                            Text("Female")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    Spacer()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 100, height: 40)
                            .foregroundColor(.blue)
                        HStack(spacing: 2){
                            Image(systemName: "clock")
                                .foregroundColor(.white)
                            
                            Text("11:00 AM")
                                .foregroundColor(.white)
                        }
                    }
                }
                .frame(width: 300)
            }
            Spacer()
        }
    }
}

struct UserDetails: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .font(.largeTitle)
            
            
            VStack(alignment: .leading){
                Text("Welcome,")
                    .font(.callout)
                
                Text("Dr. Barry Allen")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
                    .padding(.top,-20)
                
            }
        }

    }
}

struct DoctorHomePage_Previews: PreviewProvider {
    static var previews: some View {
        DoctorHomePage()
    }
}
