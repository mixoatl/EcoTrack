//
//  TrackView.swift
//  EcoTrack
//
//  Created by Monserrat Fernández on 26/05/24.
//

import SwiftUI

struct TrackView: View {
    @State private var transportationKm: String = ""
    @State private var energyConsumption: String = ""
    @State private var wasteGeneration: String = ""
    @State private var reduceDrivingKm: String = ""
    @State private var lowerElectricityConsumption: String = ""
    
    @State private var selectedTab = 2
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("ecotrack")
                        .font(.largeTitle.bold())
                        .foregroundColor(.black)
                    
                    Text("Mi huella de carbono")
                        .font(.title2.bold())
                    
                    ScrollView {
                        VStack(spacing: 20) {
                            SectionView(
                                title: "Datos de consumo",
                                fields: [
                                    ("Transporte (km):", $transportationKm),
                                    ("Consumo de energia (kWtts):", $energyConsumption),
                                    ("Producción de residuos (kg):", $wasteGeneration)
                                ],
                                buttonText: "Guardar Datos"
                            ) {
                                print("Datos guardados")
                            }
                            .padding(.top, 5)
                            
                            SectionView(
                                title: "Fijar metas",
                                fields: [
                                    ("Reduzca los kilómetros recorridos:", $reduceDrivingKm),
                                    ("Reducir el consumo de electricidad en:", $lowerElectricityConsumption)
                                ],
                                buttonText: "Guardar Metas"
                            ) {
                                print("Metas guardadas")
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .padding()
                .navigationBarHidden(true)
            }
        }
    }
}

struct SectionView: View {
    var title: String
    var fields: [(String, Binding<String>)]
    var buttonText: String
    var buttonAction: () -> Void
    
    var body: some View {
        VStack() {
            Text(title)
                .font(.headline)
                .padding(.bottom, 10)
            
            ForEach(fields, id: \.0) { field in
                VStack(alignment: .leading) {
                    Text(field.0)
                        .font(.footnote)
                        .foregroundColor(.black)
                    
                    TextField("", text: field.1)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.bottom, 0)
                }
            }
            
            Button(action: buttonAction) {
                Text(buttonText)
                    .font(.system(size: 15))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.3294, green: 0.8431, blue: 0.4078).gradient)
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 3)
    }
}

#Preview {
    TrackView()
}
