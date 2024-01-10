//
//  ContentView.swift
//  HomeApp
//
//  Created by Shuyu Zhou on 2024-01-09.
//

import SwiftUI

struct ContentView: View {
    let gradientColors = Gradient(stops: [
    .init(color: .blue, location: 0),
    .init(color: .green, location: 0.75),
    .init(color: .yellow, location: 1)])
    
    var body: some View {
        ZStack {
            Rectangle()
             .fill(gradientColors)
            VStack{
                HStack{
                    Spacer()
                    Image(systemName: "lines.measurement.horizontal")
                        .padding(.leading)
                        .padding(.bottom)
                    Image(systemName: "plus")
                        .padding(.leading)
                        .padding(.bottom)
                    Image(systemName: "ellipsis.circle")
                        .padding(.leading)
                        .padding(.bottom)
                        .padding(.trailing)
                }
                HStack {
                    Text("My Home")
                        .padding(.leading)
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                }
                HStack{
                    SwiftUIView(firstText: "Climate", secondText: "16.0-20.5°", icon: "fan.fill")
                        .padding(.leading)
                    SwiftUIView(firstText: "Security", secondText: "No Alerts", icon: "lock.fill")
                    Spacer()
                }
                .padding(.bottom)
                HStack {
                    Text("Favorites")
                        .padding(.leading)
                        .bold()
                        .font(.headline)
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
                    Image(systemName: "chevron.right")
                    Spacer()
                }
                HStack{
                    SwiftUIView2(imageOnTheLeft: "lock.fill", firstText: "Network", secondText: "On", backgroundColor: .gray)
                    SwiftUIView2(imageOnTheLeft: "lock.fill", firstText: "Hub", secondText: "On", backgroundColor: .gray)
                }
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 175, height: 130)
                    VStack {
                        SwiftUIView2(imageOnTheLeft: "appletv", firstText: "Apple TV", secondText: "Not Playing", backgroundColor: .gray)
                        SwiftUIView2(imageOnTheLeft: "homepodmini.fill", firstText: "HomePod", secondText: "Not Playing", backgroundColor: .gray)
                    }
                }
            }
        }
        .ignoresSafeArea(.all)
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
}
