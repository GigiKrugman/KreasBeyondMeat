//
//  ChartData.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 09.04.23.
//

import Combine

class ChartData: ObservableObject {
    @Published var items : [Product : Int] = [:]
    
    func addItem(product: Product, quantity: Int ) {
        if quantity > 0 {
            items[product] = quantity
        } else {
            items.removeValue(forKey: product)
        }
    }
    
    func totalCost() -> Double {
            return items.reduce(0.0) { result, item in
                result + (Double(item.value) * Double(item.key.price))
            }
    }
}
