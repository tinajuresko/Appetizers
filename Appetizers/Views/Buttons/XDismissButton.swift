//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Tina Jureško on 06.10.2024..
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.medium)
                .frame(width: 44, height: 44)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    XDismissButton()
}
