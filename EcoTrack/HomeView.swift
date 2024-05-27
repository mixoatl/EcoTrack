//
//  HomeView.swift
//  EcoTrack
//
//  Created by Monserrat Fernández on 26/05/24.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            InicioView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Inicio")
                }
                .tag(0)
            
            HStack{
                Text("ecostats")
                    .font(.largeTitle.bold())
                    .foregroundColor(.black)
                    .padding()
                Text("Espera más novedades pronto")
                
            }
            .tabItem {
                Image(systemName: "chart.bar")
                Text("Estadisticas")
            }
            .tag(1)
            
            TrackView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                }
                .tag(2)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "pencil")
                    Text("Perfil")
                }
                .tag(3)
            
            TipsEcoFriendlyView()
                .tabItem {
                    Image(systemName: "leaf.fill")
                    Text("Tips")
                }
                .tag(4)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct InicioView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Text("Reduce")
                            .font(.largeTitle.bold())
                        
                        Spacer()
                        
                        Image(systemName: "magnifyingglass")
                            .font(.title.bold())
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    Text("Comienza a ser eco-friendly hoy")
                        .font(.title3)
                        .padding(.horizontal)
                    
                    VStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Adopta lo sostenible")
                                    .font(.title.bold())
                                
                                Button(action: {
                                }) {
                                    Text("Metas")
                                        .padding(.horizontal)
                                        .padding(.vertical, 5)
                                        .background(Capsule().stroke(Color.black, lineWidth: 1))
                                        .foregroundStyle(.black)
                                        .bold()
                                }
                            }
                            
                            Spacer()
                            
                            Image(systemName: "leaf.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .padding()
                                .background(Circle().fill(Color.green))
                                .foregroundColor(.white)
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color(.systemGray6)))
                    .padding(.horizontal)
                    
                    Text("Sigue tu progreso")
                        .font(.headline)
                        .padding(.horizontal)
                    
                    VStack(spacing: 10) {
                        HStack {
                            ProgressCardView(title: "Reduce", imageName: "chart.bar.fill")
                            ProgressCardView(title: "Se más ecológico", imageName: "tree.fill")
                        }
                        
                        HStack {
                            ProgressCardView(title: "Conciencia ecológica", imageName: "leaf.fill")
                            ProgressCardView(title: "Sostenibilidad", imageName: "globe")
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top)
            }
        }
    }
}

struct ProgressCardView: View {
    var title: String
    var imageName: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .font(.largeTitle)
                .padding()
            
            Text(title)
                .font(.headline)
                .padding(.bottom)
        }
        .frame(width: 140, height: 135)
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).fill(Color(.systemGray6)))
    }
}

#Preview {
    HomeView()
}
