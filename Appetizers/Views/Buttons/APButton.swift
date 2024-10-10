//
//  APButton.swift
//  Appetizers
//
//  Created by Tina Jureško on 06.10.2024..
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey //because of the spacifier
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(Color("brandPrimary"))
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "test title")
}
