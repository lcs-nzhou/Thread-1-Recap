//
//  ContentView.swift
//  HomeApp
//
//  Created by Shuyu Zhou on 2024-01-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       NavigationStack {
            ZStack {
                Image("Background")
                    .resizable()
                VStack{
                    HStack {
                        Text("My Home")
                            .padding(.leading)
                            .font(.largeTitle)
                            .bold()
                            .foregroundStyle(.white)
                        Spacer()
                    }
                    HStack{
                        SwiftUIView(firstText: "Climate", secondText: "16.0-20.5°", icon: "fan.fill", iconColor: .cyan)
                            .padding(.leading)
                        SwiftUIView(firstText: "Security", secondText: "No Alerts", icon: "lock.fill", iconColor: .mint)
                        Spacer()
                    }
                    .padding(.bottom)
                    HStack {
                        Text("Favorites")
                            .padding(.leading)
                            .bold()
                            .font(.headline)
                            .foregroundStyle(.white)
                        Spacer()
                    }
                    HStack{
                       SwiftUIView1 (imageOnTheLeft: "door.garage.double.bay.closed", firstText: "Garage", secondText: "Door", thirdText: "Closed")
                        SwiftUIView1(imageOnTheLeft: "cloud.fill", firstText: "Hallway", secondText: "Nest", thirdText: "Heat to 12.0°")
                    }
                    HStack{
                        SwiftUIView1(imageOnTheLeft: "lock.fill", firstText: "Living Room", secondText: "Front Door", thirdText: "Locked")
                        SwiftUIView1(imageOnTheLeft: "lock.fill", firstText: "Basement", secondText: "Side Door", thirdText: "Locked")
                    }
                    .padding(.bottom)
                    HStack{
                        Text("Basement")
                            .padding(.leading)
                            .foregroundStyle(.white)
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color("LighterGray"))
                        Spacer()
                    }
                    HStack{
                        SwiftUIView2(imageOnTheLeft: "lock.fill", firstText: "Network", secondText: "On", backgroundColor: Color("DarkerGray"))
                        SwiftUIView2(imageOnTheLeft: "lock.fill", firstText: "Hub", secondText: "On", backgroundColor: Color("DarkerGray"))
                    }
                    HStack{
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 175, height: 130)
                            .padding(.leading, (10))
                            .foregroundColor(Color("DarkerGray"))
                            VStack{
                                HStack {
                                    Image(systemName: "lock.fill")
                                        .foregroundStyle(.mint)
                                        .padding(.leading, (30))
                                    Spacer()
                                }
                                
                                HStack {
                                    Text("Side Door")
                                        .bold()
                                        .foregroundStyle(.white)
                                    .padding(.top, (40))
                                    .padding(.leading, (20))
                                    Spacer()
                                }
                                HStack {
                                    Text("Locked")
                                        .foregroundStyle(Color("LighterGray"))
                                        .padding(.leading, (20))
                                    Spacer()
                                }
                            }
                        }
                        VStack {
                            SwiftUIView2(imageOnTheLeft: "appletv", firstText: "Apple TV", secondText: "Not Playing", backgroundColor: Color("DarkerGray"))
                            SwiftUIView2(imageOnTheLeft: "homepodmini.fill", firstText: "HomePod", secondText: "Not Playing", backgroundColor: Color("DarkerGray"))
                        }
                    }
                }
                .toolbar{
                    ToolbarItem (placement: .topBarTrailing){
                        Button(action: {}) {
                            Image(systemName: "lines.measurement.horizontal")
                        }
                    }
                    ToolbarItem (placement: .topBarTrailing){
                        Button(action: {}) {
                            Image(systemName: "plus")
                        }
                    }
                    ToolbarItem (placement: .topBarTrailing){
                        Button(action: {}) {
                            Image(systemName: "ellipsis.circle")
                        }
                    }
                }
                .tint(.white)
            }
            .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    TabView{
        ContentView()
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
        Text("Automation")
            .tabItem {
                Image(systemName: "deskclock")
                Text("Automation")
            }
        Text("Discover")
            .tabItem {
                Image(systemName: "star.fill" )
                Text("Discover")
            }
    }
    .tint(.white)
}
