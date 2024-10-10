//
//  EmptyState.swift
//  Appetizers
//
//  Created by Tina Jureško on 10.10.2024..
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -50) //positive number pushes it down, negative up
        }
        
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "This is our test message. \nMake stuff reusable!!")
}
