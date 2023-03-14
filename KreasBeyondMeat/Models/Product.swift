//
//  Product.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 13.03.23.
//

import Foundation

struct Product {
    var name: String
    var description: String
    var image: String
    var price: Int
    
    init(name: String, description: String, image: String, price: Int) {
        self.name = name
        self.description = description
        self.image = image
        self.price = price
    }
}
