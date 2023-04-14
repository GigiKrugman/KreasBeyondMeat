//
//  KreasBeyondMeatApp.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 13.03.23.
//

import SwiftUI

@main
struct KreasBeyondMeatApp: App {
    @StateObject private var chartData = ChartData()
    
    var body: some Scene {
        WindowGroup {
            WelcomeView()
                .environmentObject(chartData)
                .environmentObject(FavoritesData())
        }
    }
}
