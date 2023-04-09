//
//  ProductDetailView.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 16.03.23.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    var body: some View {
        VStack {
            Text(product.name)
                
            Text(product.description)
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        ProductDetailView(product: SampleData.sampleProductDetailed[0])
    }
}
