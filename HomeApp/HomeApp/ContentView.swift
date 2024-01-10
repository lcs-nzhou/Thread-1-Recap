//
//  ContentView.swift
//  HomeApp
//
//  Created by Shuyu Zhou on 2024-01-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(systemName: "lines.measurement.horizontal")
                Image(systemName: "plus")
                Image(systemName: "ellipsis.circle")
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
                SwiftUIView(firstText: "Security", secondText: "No Alerts", icon: "lock.fill")
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
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 30)
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 30)
            }
            HStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 30)
                VStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 30)
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 30)
                }
            }
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
}
