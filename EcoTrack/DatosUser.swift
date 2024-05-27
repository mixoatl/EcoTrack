//
//  DatosUser.swift
//  EcoTrack
//
//  Created by Monserrat Fernández on 26/05/24.
//
import SwiftUI

struct DatosUser: View {
    @State private var selectedHabits: Set<String> = []
    
    @State private var email = ""
    @State private var nombre = ""
    @State private var edad = ""
    @State private var genero = ""
    @State private var ubicacion = ""
    
    var body: some View {
        VStack {
            Text("Datos del usuario")
                .font(.system(size: 25))
                .fontWeight(.heavy)
            
            Spacer()
            
            Text("Datos personales")
                .font(.headline)
                .offset(x: -95)
            
            Spacer()
            
            VStack(spacing: 15) {
                Text("Nombre completo")
                    .font(.footnote)
                    .foregroundStyle(.black)
                    .offset(x: -110)
                
                TextField("Ingresa tu nombre completo", text: $nombre)
                    .font(.subheadline)
                    .padding(12)
                    .cornerRadius(12)
                    .modifier(TxtView())
                
                Text("Correo electrónico")
                    .font(.footnote)
                    .foregroundStyle(.black)
                    .offset(x: -110)
                
                TextField("Ingresa tu correo electrónico", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .cornerRadius(12)
                    .modifier(TxtView())
                
                Text("Edad")
                    .font(.footnote)
                    .foregroundStyle(.black)
                    .offset(x: -150)
                
                TextField("Ingresa tu edad", text: $edad)
                    .font(.subheadline)
                    .padding(12)
                    .cornerRadius(12)
                    .modifier(TxtView())
                
                Text("Género")
                    .font(.footnote)
                    .foregroundStyle(.black)
                    .offset(x: -145)
                
                TextField("Ingresa tu género", text: $genero)
                    .font(.subheadline)
                    .padding(12)
                    .cornerRadius(12)
                    .modifier(TxtView())
                
                Text("Ubicación")
                    .font(.footnote)
                    .foregroundStyle(.black)
                    .offset(x: -135)
                
                TextField("Ingresa tu ubicación", text: $ubicacion)
                    .font(.subheadline)
                    .padding(12)
                    .cornerRadius(12)
                    .modifier(TxtView())
            }
            .padding(.trailing, 24)
            .offset(x: 13)
            
            Spacer()
            
            Text("¿Qué hábitos quieres mejorar?")
                .font(.headline)
                .padding(.bottom, 10)
                .padding(.top, 10)
                .offset(x: -45)
            
            VStack(spacing: 10) {
                HStack(spacing: 14) {
                    HabitoButton(text: "REDUCIR", isSelected: selectedHabits.contains("REDUCIR")) {
                        toggleHabit("REDUCIR")
                    }
                    HabitoButton(text: "RECICLAR", isSelected: selectedHabits.contains("RECICLAR")) {
                        toggleHabit("RECICLAR")
                    }
                    HabitoButton(text: "REUSAR", isSelected: selectedHabits.contains("REUSAR")) {
                        toggleHabit("REUSAR")
                    }
                }
                
                HStack(spacing: 16) {
                    HabitoButton(text: "INFORMAR", isSelected: selectedHabits.contains("INFORMAR")) {
                        toggleHabit("INFORMAR")
                    }
                    HabitoButton(text: "SOSTENIBILIDAD", isSelected: selectedHabits.contains("SOSTENIBILIDAD")) {
                        toggleHabit("SOSTENIBILIDAD")
                    }
                }
            }
            
            VStack(spacing: 16){
                NavigationLink(destination: HomeView()) {
                    Text("Finalizar")
                        .modifier(ButtonRounded(color: Color(red: 0.149, green: 0.2196, blue: 0.1608)))
                        .padding(.top, 10)
                }
                
            }
        }
    }
    
    private func toggleHabit(_ habit: String) {
        if selectedHabits.contains(habit) {
            selectedHabits.remove(habit)
        } else {
            selectedHabits.insert(habit)
        }
    }
}

struct HabitoButton: View {
    var text: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(isSelected ? .white : .black)
                .padding()
                .background(isSelected ? Color.black : Color.clear)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.black, lineWidth: 1)
                )
        }
        .frame(minWidth: 110)
    }
}

#Preview {
    DatosUser()
}
