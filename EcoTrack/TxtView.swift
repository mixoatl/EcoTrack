//
//  TxtView.swift
//  EcoTrack
//
//  Created by Monserrat Fernández on 25/05/24.
//

import SwiftUI

struct TxtView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(Color(.systemGray), lineWidth: 1)
                .padding(.horizontal, -12)
            )
            .background(
                RoundedRectangle(cornerRadius: 24)
                    .fill(Color.white)
                    .padding(.horizontal, -12)
            )
            .padding(.horizontal, 24)
    }
}
