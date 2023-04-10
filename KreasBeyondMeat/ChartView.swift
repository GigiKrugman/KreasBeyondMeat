//
//  ChartView.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 10.04.23.
//

import SwiftUI

struct ChartView: View {
    @EnvironmentObject var chartData: ChartData

    var body: some View {
            NavigationView {
                List(Array(chartData.items.keys), id: \.self) { product in
                    HStack {
                        Text(product.name)
                            .font(.headline)
                        Spacer()
                        Text("\(chartData.items[product]!)")
                    }
                }
                .navigationTitle("Chart")
            }
        
        }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView().environmentObject(ChartData())
    }
}
