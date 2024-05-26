//
//  ButtonRounded.swift
//  EcoTrack
//
//  Created by Monserrat Fernández on 25/05/24.
//

import SwiftUI

struct ButtonRounded: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .fontWeight(.black)
            .frame(height: 48)
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .padding(.horizontal)
            .background(color)
            .cornerRadius(24)
            .padding(.horizontal, 24)
    }
}

struct ButtonRoundedPadding: ViewModifier {
    let color: Color
    let padding: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .frame(height: 48)
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .padding(.horizontal)
            .background(color)
            .cornerRadius(24)
            .padding(.horizontal, padding)
    }
}
