//
//  TipsEcoFriendlyView.swift
//  EcoTrack
//
//  Created by Monserrat Fernández on 26/05/24.
//

import SwiftUI

struct TipsEcoFriendlyView: View {
    @State private var selectedTab = 4
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Mundo")
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
            
            Text("Editar")
                .tabItem {
                    Image(systemName: "pencil")
                    Text("Perfil")
                }
                .tag(3)
            
            TipsView()
                .tabItem {
                    Image(systemName: "leaf.fill")
                    Text("Tips")
                }
                .tag(4)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TipsView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "leaf.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.green)
                    Text("eco-Friendly")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .padding()
                
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(tips, id: \.self) { tip in
                            TipRow(tip: tip)
                        }
                    }
                    .padding()
                }
                
                Button(action: {
                }) {
                    Text("Explora más tips")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.black, lineWidth: 1)
                        )
                }
                .padding()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TipRow: View {
    var tip: String
    
    var body: some View {
        HStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(40)
            
            Text(tip)
                .font(.body)
            
            Spacer()
            
            HStack(spacing: 16) {
                Image(systemName: "figure.walk")
                    .foregroundColor(.green)
                Image(systemName: "chart.bar")
            }
            .padding(.trailing)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(50)
    }
}

let tips = [
    "Reduce tu huella de carbono con...",
    "¡Ponte meta ecológicas para un futuro verde!",
    "¡Celebra tus logros sustentables!",
    "Mantente motivado para un planeta más verde",
    "Ingresa a Eco-friendly"
]

#Preview {
    TipsEcoFriendlyView()
}
