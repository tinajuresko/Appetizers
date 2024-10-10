//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Tina Jureško on 03.10.2024..
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
