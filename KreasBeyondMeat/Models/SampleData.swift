//
//  SampleData.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 09.04.23.
//

import Foundation

struct SampleData {
    //this is to add sample products to the ProductDetailView
    static let sampleProductDetailed = [Product(name: "Beyond Meat", description: "This is a delicious burger", image: "Beyond chicken", price: 10),
                                Product(name: "Beyond Chicken", description: "This is a delicious Chicken", image: "Beyond chicken", price: 60)
    ]
    
    //This is to add sampleProducts in the ProductsView
    static let sampleProducts = [
            Product(name: "Beyond meat", description: "Beyond Burger" , image: "Beyond Burger", price: 10),
            Product(name: "Beyond chicken", description: "Beyond Chicken", image: "Beyond chicken", price: 20)
        ]
}
