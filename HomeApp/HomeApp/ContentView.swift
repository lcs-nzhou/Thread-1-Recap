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
            Text("My Home")
            HStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 30)
            }
            Text("Favorites")
            HStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 30)
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 30)
            }
            HStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 30)
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 30)
            }
            HStack{
                Text("Basement")
                Image(systemName: "chevron.right")
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
