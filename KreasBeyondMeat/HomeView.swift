//
//  ContentView.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 13.03.23.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTabIndex = 0
    //Here i'm gonna add an @StateObject:
    @StateObject private var chartData = ChartData()
    
    var body: some View {
        VStack {
            
                TabView (selection: $selectedTabIndex){
                    
                    ProductsView()
                        .tabItem {
                            
                            Label("Home" , systemImage: "house")
                                .tag(0)
                                .environmentObject(chartData)
                        }
                    //Here i wanna be able to navigate to the ChartView in the Tab
                    ChartView()
                        .tabItem {
                            Label("Chart", systemImage: "bag")
                        }
                        .tag(1)
                    FavoriteView()
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
        HomeView().environmentObject(ChartData())
            .environmentObject(FavoritesData())
    }
}
