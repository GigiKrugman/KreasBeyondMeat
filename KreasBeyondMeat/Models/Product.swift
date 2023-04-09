//
//  Product.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 13.03.23.
//

import Foundation

struct Product: Identifiable {
   var id = UUID()
    var name: String
    var description: String
    var image: String
    var price: Int
    
    init(id: UUID = UUID(), name: String, description: String, image: String, price: Int) {
        self.id = id
        self.name = name
        self.description = description
        self.image = image
        self.price = price
    }
    
}
