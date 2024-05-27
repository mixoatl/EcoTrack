//
//  ProfileView.swift
//  EcoTrack
//
//  Created by Monserrat Fernández on 26/05/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedTab = 3
    
    var body: some View {
        NavigationView{
            VStack {
                VStack {
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 150, height: 150)
                            .shadow(color: .gray, radius: 10, x: 0, y: 5)
                        
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.top, 50)
                    
                    HStack {
                        Text("Nombre")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .padding(.top, 20)
                        
                        Image(systemName: "pencil")
                            .font(.system(size: 20))
                            .fontWeight(.heavy)
                            .offset(x: 10, y: 10)
                    }
                    .padding(.top, 5)
                }
                .padding(.bottom, 30)

                VStack(spacing: 20) {
                    Button(action: {
                    }) {
                        Text("Configurar")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                            .foregroundStyle(.black)
                            .bold()
                    }
                    
                    Button(action: {
                    }) {
                        Text("Forma de pago")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                            .foregroundStyle(.black)
                            .bold()
                    }
                    
                    Button(action: {
                    }) {
                        Text("Ayuda")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                            .foregroundStyle(.black)
                            .bold()
                    }
                    
                    Button(action: {
                    }) {
                        Text("Seguridad")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                            .foregroundStyle(.black)
                            .bold()
                    }
                }
                .padding(.horizontal, 20)
                
                Spacer()
                
                NavigationLink(destination: LoginView()) {
                    Text("Cerrar Sesión")
                        .modifier(ButtonRounded(color: Color.red))
                }
                                  
                .padding(.bottom, 30)
            }
            .background(Color.gray.opacity(0.1).edgesIgnoringSafeArea(.all))
        }
    }
}
        
    
#Preview {
    ProfileView()
}
