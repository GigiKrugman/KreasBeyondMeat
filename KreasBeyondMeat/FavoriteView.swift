//
//  FavoriteView.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 10.04.23.
//

import SwiftUI

struct FavoriteView: View {
    @EnvironmentObject var favoritesData: FavoritesData
    var body: some View {
        NavigationView {
            List {
                ForEach(favoritesData.favorites, id: \.id) {product in  
                    Text(product.name)
                }
                    
                }
            .navigationTitle("Favorites")
            }
            
        }
    }


struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView().environmentObject(FavoritesData())
    }
}
