//
//  ContentView.swift
//  AlexandroLopez-Shop
//
//  Created by Carlos López García on 16/07/25.
//

// AlexandroLopez-ShopApp.swift

// ContentView.swift

import SwiftUI

struct ContentView: View {
  
    @State private var selectedTab: String? = "Dashboard"

    var body: some View {
       
        NavigationSplitView {
           
            VStack(alignment: .leading, spacing: 10) {
            
                Text("TuNombre Shop")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                    .padding(.horizontal)

              
                NavigationLink(destination: DashboardView(), tag: "Dashboard", selection: $selectedTab) {
                    Label("Dashboard", systemImage: "square.grid.2x2.fill")
                        .padding(.vertical, 8)
                        .padding(.horizontal)
                        .background(selectedTab == "Dashboard" ? Color.accentColor.opacity(0.2) : Color.clear)
                        .cornerRadius(8)
                }
                .buttonStyle(PlainButtonStyle())

               
                Button(action: { selectedTab = "Categorias" }) {
                    Label("Categorias", systemImage: "list.bullet.rectangle.portrait.fill")
                        .padding(.vertical, 8)
                        .padding(.horizontal)
                        .background(selectedTab == "Categorias" ? Color.accentColor.opacity(0.2) : Color.clear)
                        .cornerRadius(8)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: { selectedTab = "Favoritos" }) {
                    Label("Favoritss", systemImage: "star.fill")
                        .padding(.vertical, 8)
                        .padding(.horizontal)
                        .background(selectedTab == "Favoritss" ? Color.accentColor.opacity(0.2) : Color.clear)
                        .cornerRadius(8)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: { selectedTab = "Ordenes" }) {
                    Label("Ordenes", systemImage: "bag.fill")
                        .padding(.vertical, 8)
                        .padding(.horizontal)
                        .background(selectedTab == "Ordenes" ? Color.accentColor.opacity(0.2) : Color.clear)
                        .cornerRadius(8)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: { selectedTab = "Mensajes" }) {
                    Label("Mesajes", systemImage: "mesajes.fill")
                        .padding(.vertical, 8)
                        .padding(.horizontal)
                        .background(selectedTab == "Mesajes" ? Color.accentColor.opacity(0.2) : Color.clear)
                        .cornerRadius(8)
                }
                .buttonStyle(PlainButtonStyle())

                Button(action: { selectedTab = "Mejores Ofertas" }) {
                    Label("Mejores Ofertas", systemImage: "flame.fill")
                        .padding(.vertical, 8)
                        .padding(.horizontal)
                        .background(selectedTab == "Mejores Ofertas" ? Color.accentColor.opacity(0.2) : Color.clear)
                        .cornerRadius(8)
                }
                .buttonStyle(PlainButtonStyle())

                Spacer()

                Button(action: { selectedTab = "Configuracion" }) {
                    Label("Configuracion", systemImage: "gearshape.fill")
                        .padding(.vertical, 8)
                        .padding(.horizontal)
                        .background(selectedTab == "Configuracion" ? Color.accentColor.opacity(0.2) : Color.clear)
                        .cornerRadius(8)
                }
                .buttonStyle(PlainButtonStyle())
                .padding(.bottom)

            }
            .frame(minWidth: 180, idealWidth: 200, maxWidth: 250, alignment: .topLeading)
            .padding(.top)
            .padding(.leading)
            .listStyle(SidebarListStyle())
            .navigationTitle("Navegación")

        } content: {
            Group {
                if selectedTab == "Dashboard" {
                    DashboardView()
                } else if selectedTab == "Categorias" {
                    Text("Vista de Categorías (Vacía)")
                        .font(.largeTitle)
                        .foregroundColor(.secondary)
                } else if selectedTab == "Favoritos" {
                    Text("Vista de Favoritos (Vacía)")
                        .font(.largeTitle)
                        .foregroundColor(.secondary)
                } else if selectedTab == "Pedidos" {
                    Text("Vista de Pedidos (Vacía)")
                        .font(.largeTitle)
                        .foregroundColor(.secondary)
                } else if selectedTab == "Mesajes" {
                    Text("Vista de Mensajes (Vacía)")
                        .font(.largeTitle)
                        .foregroundColor(.secondary)
                } else if selectedTab == "Mejores Ofertas" {
                    Text("Vista de Ofertas (Vacía)")
                        .font(.largeTitle)
                        .foregroundColor(.secondary)
                } else if selectedTab == "Settings" {
                    Text("Vista de Ajustes (Vacía)")
                        .font(.largeTitle)
                        .foregroundColor(.secondary)
                }
            }
           
            .navigationTitle(selectedTab ?? "Dashboard")
        } detail: {
           
            Text("Selecciona una opción de la barra lateral")
                .font(.title)
                .foregroundColor(.secondary)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
