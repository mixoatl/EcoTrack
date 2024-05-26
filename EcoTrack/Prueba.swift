//
//  Prueba.swift
//  EcoTrack
//
//  Created by Monserrat Fernández on 25/05/24.
//

import SwiftUI

struct Prueba: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Pantalla de Prueba")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: LoginView()) {
                    Text("Ir a Login View")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

#Preview {
    Prueba()
}
