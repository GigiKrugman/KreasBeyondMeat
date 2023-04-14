//
//  FavoritesData.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 14.04.23.
//

import Combine
import SwiftUI

class FavoritesData: ObservableObject {
    @Published var favorites: [Product] = []
    
    func addFavorite(product: Product) {
        if !favorites.contains(where: { $0.id == product.id }) {
            favorites.append(product)
        }
    }
    
    func removeFavorite(product: Product) {
        favorites.removeAll { $0.id == product.id }
    }
}
