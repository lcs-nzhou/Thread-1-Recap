//
//  HomeAppApp.swift
//  HomeApp
//
//  Created by Shuyu Zhou on 2024-01-09.
//

import SwiftUI

@main
struct HomeAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                Text("Automation")
                    .tabItem {
                        Image(systemName: "deskclock")
                    }
                Text("Discover")
                    .tabItem {
                        Image(systemName: "star.fill" )
                    }
            }
            
        }
    }
}
