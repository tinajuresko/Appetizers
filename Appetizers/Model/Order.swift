//
//  Order.swift
//  Appetizers
//
//  Created by Tina Jureško on 10.10.2024..
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
}
