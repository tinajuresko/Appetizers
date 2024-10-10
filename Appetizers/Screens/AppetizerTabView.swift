//
//  ContentView.swift
//  Appetizers
//
//  Created by Tina Jureško on 03.10.2024..
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView { //shows three different screens
            AppetizerListView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem{
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

#Preview {
    AppetizerTabView().environmentObject(Order())
}
