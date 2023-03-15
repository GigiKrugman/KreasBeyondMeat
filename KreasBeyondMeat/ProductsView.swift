//
//  ProductsView.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 14.03.23.
//

import SwiftUI

struct ProductsView: View {
   var products = [Product(name: "beyond meat", description: "Very good", image: "Beyond Burger", price: 10),
                   Product(name: "Beyond chicken", description: "Very tasty", image: "Beyond chicken", price: 20)]
    
    var body: some View {
        NavigationStack {
            List(products) { product in
                ProductImageRow(product: product)
            }
        }
        .navigationTitle("Products")
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}

struct ProductImageRow: View {
    var product : Product
    var body: some View {
        
        HStack {
            Image(product.image)
                .resizable()
                //.frame(width: 80, height: 60)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(10)
            Text(product.description)
        }
        .listStyle(.plain)
    }
}
