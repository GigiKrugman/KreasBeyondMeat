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
                Text("Products")
                    .tabItem {
                        Label("Products" , systemImage: "sparkles")
                            .tag(0)
                    }
                Text("About")
                    .tabItem {
                        Label("About", systemImage: "sparkles")
                    }
                    .tag(1)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
