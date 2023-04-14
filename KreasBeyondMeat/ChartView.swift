//
//  ChartView.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 10.04.23.
//

import SwiftUI



struct ChartView: View {
    @EnvironmentObject var chartData: ChartData
    
    func formatCurrency(value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "EUR"
        return formatter.string(from: NSNumber(value: value)) ?? "0.00"
    }

    var body: some View {
        NavigationView {
            VStack {
                List(Array(chartData.items.keys), id: \.self) { product in
                    HStack {
                        Text(product.name)
                            .font(.headline)
                        Spacer()
                        Text("QTY: \(chartData.items[product]!)")
                    }
                }
                HStack {
                    Spacer()
                    Text("Total Cost: \(formatCurrency(value: chartData.totalCost()))")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .padding(.trailing)
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
