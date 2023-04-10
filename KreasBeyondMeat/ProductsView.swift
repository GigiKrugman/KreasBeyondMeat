//
//  ProductsView.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 14.03.23.
//

import SwiftUI


    struct ProductsView: View {
        var products = SampleData.sampleProducts
        @EnvironmentObject var chartData: ChartData
        
        
            var body: some View {
                   NavigationView {
                       List(products) { product in
                           NavigationLink(destination: ProductDetailView(product: product).environmentObject(chartData)) {
                               ProductImageRow(product: product)
                           }
                       }
                       .navigationTitle("Products")
                   }
               
        }
    }
    
    struct ProductImageRow: View {
        var product : Product
        var body: some View {
            
            ZStack {
                Image(product.image)
                    .resizable()
                //.frame(width: 80, height: 60)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(10)
                Text(product.name)
                    .fontWeight(.black)
                    .foregroundColor(.white)
            }
            .listStyle(.plain)
        }
    }



struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        //Here we pass in the preview the environment Object:
        ProductsView().environmentObject(ChartData())}
}


