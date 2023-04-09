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
                .font(.title)
                .fontWeight(.black)
                
            
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(product.description)
                .font(.system(.title2, design: .monospaced))
            Spacer()
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        ProductDetailView(product: SampleData.sampleProducts[0])
    }
}
