//
//  DashboardView.swift
//  AlexandroLopez-Shop
//
//  Created by Carlos López García on 16/07/25.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 30) {
                
                Text("Hola, Alex")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                
                VStack(alignment: .leading) {
                    Text("Categorías")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue.opacity(0.2))
                        .frame(height: 150)
                        .overlay(Text("Contenido de Categorías").foregroundColor(.blue))
                }
                
                
                VStack(alignment: .leading) {
                    Text("Productos Populares")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.green.opacity(0.2))
                        .frame(height: 200)
                        .overlay(Text("Contenido de Productos Populares").foregroundColor(.green))
                }
                
                
                VStack(alignment: .leading) {
                    Text("Descuentos")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.orange.opacity(0.2))
                        .frame(height: 180)
                        .overlay(Text("Contenido de Descuentos").foregroundColor(.orange))
                }
                
                
                VStack(alignment: .leading) {
                    Text("Últimos Pedidos")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.purple.opacity(0.2))
                        .frame(height: 150)
                        .overlay(Text("Contenido de Últimos Pedidos").foregroundColor(.purple))
                }
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .navigationTitle("Dashboard")
    }
    
    
    struct DashboardView_Previews: PreviewProvider {
        static var previews: some View {
            DashboardView()
        }
    }
    }
