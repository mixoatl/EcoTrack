//
//  BienvenidaView.swift
//  EcoTrack
//
//  Created by Monserrat Fernández on 21/05/24.
//

import SwiftUI

struct BienvenidaView: View {
    @State private var isPresented = false
    var body: some View {
        NavigationView {
            VStack {
                Ellipse()
                    .foregroundColor(Color(red: 0.54, green: 0.86, blue: 0.16).opacity(0.21))
                    .frame(width: 547, height: 492)
                    .overlay(
                        Ellipse()
                            .stroke(Color(red: 0.54, green: 0.86, blue: 0.16), lineWidth: 0.50)
                    )
                    .offset(x: 17.50, y: -100)
                
                Spacer()
                
                Rectangle()
                    .foregroundColor(.clear)
                    .background(
                        Image("Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 180)
                    )
                    .offset(x: -2, y: -320)
                    .rotationEffect(.degrees(0.10))
                
                Spacer()
                
                Text("Calcula, rastrea y cambia")
                    .font(.system(size: 24))
                    .fontWeight(.thin)
                    .foregroundColor(.black)
                    .offset(x: 5, y: -220)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 368, height: 329)
                    .background(
                        Image("Bienvenida")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 360, height: 250)
                    )
                    .offset(x: 5, y: -120)
                
                Button{
                    isPresented = true
                } label: {
                    Text("Empezar     →")
                        .modifier(ButtonRounded(color: Color(red: 0.44, green: 0.59, blue: 0.02)))
                }
                .offset(x: 5, y: -100)
                
                Spacer()
                
                    .fullScreenCover(isPresented: $isPresented, content: {
                        LoginView()
                    })
                
            }
            .background(Color(red: 0.902, green: 0.9569, blue: 0.9608))
        }
    }
}

#Preview {
    BienvenidaView()
}
