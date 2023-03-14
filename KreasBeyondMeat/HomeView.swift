//
//  ContentView.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 13.03.23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            TabView {
                Text("Home")
                    .tabItem {
                        Label("Home" , systemImage: "house")
                            .tag(0)
                    }
                Text("Chart")
                    .tabItem {
                        Label("Chart", systemImage: "bag")
                    }
                    .tag(1)
                Text("Favorites")
                    .tabItem {
                        Label("Favorites", systemImage: "heart")
                    }
                    .tag(2)
                Text("Settings")
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
                    .tag(3)
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
