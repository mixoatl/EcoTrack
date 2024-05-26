//
//  RegisterView.swift
//  EcoTrack
//
//  Created by Monserrat Fernández on 25/05/24.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var password = ""
    
    @State private var isShowingPassword = false
    
    var body: some View {
        VStack(spacing: 16) {
            Ellipse()
                .foregroundColor(Color(red: 0.9373, green: 0.8235, blue: 0.7412).opacity(0.7))
                .frame(width: 547, height: 492)
                .overlay(
                    Ellipse()
                        .inset(by: 0.50)
                        .stroke(Color(red: 09529, green: 0.7451, blue: 0.6549), lineWidth: 1)
                )
                .offset(x: 10, y: -170)
            
            Spacer()
            
            Rectangle()
                .foregroundColor(.clear)
                .background(
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 180)
                )
                .offset(x: -2, y: -350)
                .rotationEffect(.degrees(0.10))
            
            Spacer()
            
            Text("Regístrate")
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
                        Image(systemName: isShowingPassword ? "eye" : "eye.slash")
                            .foregroundColor(.gray)
                    })
                }
                .modifier(TxtView())
                
                Text("Re-ingresa la contraseña")
                    .font(.footnote)
                    .foregroundStyle(.black)
                    .offset(x: -95)
                
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
                        Image(systemName: isShowingPassword ? "eye" : "eye.slash")
                            .foregroundColor(.gray)
                    })
                }
                .modifier(TxtView())
            }
            .offset(x: 13, y: -210)
            .padding(.trailing, 24)
        }
        
        VStack(spacing: 16){
            NavigationLink(destination: DatosUser()) {
                Text("Regístrate     →")
                    .modifier(ButtonRounded(color: Color(red: 0.3098, green: 0.1961, blue: 0.1333)))
            }
            .offset(x: 0, y: -180)
            
            NavigationLink{
                LoginView()
                    .navigationBarBackButtonHidden()
            } label: {
                HStack{
                    Text("¿Ya tienes una cuenta?")
                    
                    Text("Inicia Sesión")
                        .foregroundColor(.orange)
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.caption)
                .frame(height: 40)
            }

            .offset(x: 0, y: -180)
            .padding(.vertical, 10)
        }
        
    }
}

#Preview {
    RegisterView()
}
