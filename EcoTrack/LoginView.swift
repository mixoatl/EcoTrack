//
//  LoginView.swift
//  EcoTrack
//
//  Created by Monserrat Fernández on 25/05/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isShowingPassword = false
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 16) {
                Ellipse()
                    .foregroundColor(Color(red: 0.86, green: 0.83, blue: 0.16).opacity(0.21))
                    .frame(width: 547, height: 492)
                    .overlay(
                        Ellipse()
                            .inset(by: 0.50)
                            .stroke(Color(red: 1, green: 0.90, blue: 0.02), lineWidth: 0.50)
                    )
                    .offset(x: 10, y: -190)
                
                Spacer()
                
                Rectangle()
                    .foregroundColor(.clear)
                    .background(
                        Image("Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 180)
                    )
                    .offset(x: -2, y: -390)
                    .rotationEffect(.degrees(0.10))
                
                Spacer()
                
                Text("Iniciar Sesión")
                    .font(.system(size: 28))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .offset(x: -8.50, y: -230)
                
                VStack(spacing: 20){
                    Text("Correo electrónico")
                        .font(.footnote)
                        .foregroundStyle(.black)
                        .offset(x: -110)
                    
                    HStack{
                        Image(systemName: "envelope")
                            .fontWeight(.semibold)
                        
                        TextField("Email", text: $email)
                            .font(.subheadline)
                            .padding(12)
                            .cornerRadius(12)
                        
                    }
                    
                    .modifier(TxtView())
                    
                    Text("Contraseña")
                        .font(.footnote)
                        .foregroundStyle(.black)
                        .offset(x: -135)
                    
                    HStack{
                        Image(systemName: "lock")
                            .fontWeight(.semibold)
                        
                        if isShowingPassword {
                            TextField("Password", text: $password)
                                .font(.subheadline)
                                .padding(12)
                                .cornerRadius(12)
                        } else {
                            SecureField("Password", text: $password)
                                .font(.subheadline)
                                .padding(12)
                                .cornerRadius(12)
                        }
                        
                        Button(action: {
                            isShowingPassword.toggle()
                        }, label: {
                            Image(systemName: "eye")
                                .foregroundColor(.gray)
                        })
                    }
                    .modifier(TxtView())
                }
                .padding(.trailing, 24)
                .offset(x: 13, y: -210)
            }
            
            VStack(spacing: 16){
                NavigationLink(destination: Prueba()) {
                    Text("Iniciar Sesión     →")
                        .modifier(ButtonRounded(color: Color(red: 0.3098, green: 0.2902, blue: 0.1333)))
                }
                .offset(x: 0, y: -180)
                
                NavigationLink{
                    RegisterView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack{
                        Text("¿No tienes una cuenta?")
                        
                        Text("Regístrate")
                            .foregroundColor(.orange)
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.caption)
                    .frame(height: 40)
                }
                .offset(x: 0, y: -180)
            }
        }
    }
    
}

#Preview {
    LoginView()
}
