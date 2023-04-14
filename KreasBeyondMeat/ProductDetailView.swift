//
//  ProductDetailView.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 16.03.23.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var chartData: ChartData
    @EnvironmentObject var favoritesData: FavoritesData
    var product: Product
    @State private var isFavorite: Bool = false
    @State private var number: Int = 0
    
    var body: some View {
        VStack {
            Text(product.name)
                .font(.title)
                .fontWeight(.black)
                
            
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack {
                Text(product.description)
                Text("Price: \(product.price) euro")
            }
            .font(.system(.title2, design: .monospaced))
            HStack {
                Button(action: { number = max(number + 1, 0)}) {
                    Text("+")
                        .font(.title)
                        .foregroundColor(.green)
                        .fontWeight(.heavy)
                }
                
                Button(action: {number = max(number - 1, 0)}) {
                  Text("\(number)")
                    Text("-")
                        .font(.title)
                        .foregroundColor(.green)
                        .fontWeight(.heavy)
                }
                
                Spacer()
                Button(action: {isFavorite.toggle(); if isFavorite {
                    favoritesData.addFavorite(product: product)
                } else {
                    favoritesData.removeFavorite(product: product)
                } }) {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .font(.title)
                        .foregroundColor(isFavorite ? .red : .gray)
                }
            }
                HStack {
                    Button(action: {chartData.addItem(product: product, quantity: number)}) {
                    Text("Add to chart")
                        .font(.title)
                        .padding(.all)
                        .background(Color.red)
                        .foregroundColor(.white)
                }
            }
            Spacer()
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        ProductDetailView(product: SampleData.sampleProducts[0])
                    .environmentObject(ChartData())
                    .environmentObject(FavoritesData())
    }
}
