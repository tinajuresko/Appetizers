//
//  LoadingView.swift
//  Appetizers
//
//  Created by Tina Jureško on 05.10.2024..
//

import Foundation
import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor(named: "brandPrimary")
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
    }
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground) //white in light mode, black in dark mode
                .edgesIgnoringSafeArea(.all)
            
            ActivityIndicator()
        }
    }
}
