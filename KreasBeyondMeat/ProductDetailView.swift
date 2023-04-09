//
//  ProductDetailView.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 16.03.23.
//

import SwiftUI

struct ProductDetailView: View {
    @State var isFavorite: Bool = false
    @State var number = 0
    let product: Product
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
                Button(action: {isFavorite.toggle()}) {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .font(.title)
                                                .foregroundColor(isFavorite ? .red : .gray)
                }
            }
                                       HStack {
                Button(action: {}) {
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
    }
}
