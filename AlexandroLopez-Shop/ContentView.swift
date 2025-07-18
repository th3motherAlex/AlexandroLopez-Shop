//
//  ContentView.swift
//  AlexandroLopez-Shop
//
//  Created by Carlos López García on 16/07/25.
//
import SwiftUI

struct ContentView: View {
    @State private var selectedTab: String? = "Dashboard"

    var body: some View {
        ZStack {
            Color("VerdeFondo").ignoresSafeArea()

            NavigationSplitView {
            
                VStack(alignment: .leading, spacing: 10) {
                    Text("FruteriAlex")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("VerdeOscuro"))
                        .padding(.bottom, 20)
                        .padding(.horizontal)

                    NavigationLink(destination: DashboardView(), tag: "Dashboard", selection: $selectedTab) {
                        Label("Inicio", systemImage: "square.grid.2x2.fill")
                            .padding(.vertical, 8)
                            .padding(.horizontal)
                            .background(selectedTab == "Dashboard" ? Color("VerdePrincipal").opacity(0.2) : Color.clear)
                            .cornerRadius(8)
                    }
                    .buttonStyle(PlainButtonStyle())

                    Button(action: { selectedTab = "Categorias" }) {
                        Label("Categorias", systemImage: "list.bullet.rectangle.portrait.fill")
                            .padding(.vertical, 8)
                            .padding(.horizontal)
                            .background(selectedTab == "Categorias" ? Color("VerdePrincipal").opacity(0.2) : Color.clear)
                            .cornerRadius(8)
                    }
                    .buttonStyle(PlainButtonStyle())

                    Button(action: { selectedTab = "Favoritos" }) {
                        Label("Favoritos", systemImage: "star.fill")
                            .padding(.vertical, 8)
                            .padding(.horizontal)
                            .background(selectedTab == "Favoritos" ? Color("VerdePrincipal").opacity(0.2) : Color.clear)
                            .cornerRadius(8)
                    }
                    .buttonStyle(PlainButtonStyle())

                    Button(action: { selectedTab = "Orders" }) {
                        Label("Ordenes", systemImage: "bag.fill")
                            .padding(.vertical, 8)
                            .padding(.horizontal)
                            .background(selectedTab == "Orders" ? Color("VerdePrincipal").opacity(0.2) : Color.clear)
                            .cornerRadius(8)
                    }
                    .buttonStyle(PlainButtonStyle())

                    Button(action: { selectedTab = "Mensajes" }) {
                        Label("Mensajes", systemImage: "message.fill")
                            .padding(.vertical, 8)
                            .padding(.horizontal)
                            .background(selectedTab == "Mensajes" ? Color("VerdePrincipal").opacity(0.2) : Color.clear)
                            .cornerRadius(8)
                    }
                    .buttonStyle(PlainButtonStyle())

                    Button(action: { selectedTab = "Ofertas" }) {
                        Label("Ofertas", systemImage: "flame.fill")
                            .padding(.vertical, 8)
                            .padding(.horizontal)
                            .background(selectedTab == "Ofertas" ? Color("VerdePrincipal").opacity(0.2) : Color.clear)
                            .cornerRadius(8)
                    }
                    .buttonStyle(PlainButtonStyle())

                    Spacer()

                    Button(action: { selectedTab = "Ajustes" }) {
                        Label("Ajustes", systemImage: "gearshape.fill")
                            .padding(.vertical, 8)
                            .padding(.horizontal)
                            .background(selectedTab == "Ajustes" ? Color("VerdePrincipal").opacity(0.2) : Color.clear)
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
                // MARK: - Contenido principal
                Group {
                    if selectedTab == "Dashboard" {
                        DashboardView()
                    } else if selectedTab == "Categorias" {
                        Text("Vista de Categorías (Vacía)")
                            .font(.largeTitle)
                            .foregroundColor(Color("VerdeOscuro"))
                    } else if selectedTab == "Favoritos" {
                        Text("Vista de Favoritos (Vacía)")
                            .font(.largeTitle)
                            .foregroundColor(Color("VerdeOscuro"))
                    } else if selectedTab == "Orders" {
                        Text("Vista de Pedidos (Vacía)")
                            .font(.largeTitle)
                            .foregroundColor(Color("VerdeOscuro"))
                    } else if selectedTab == "Mensajes" {
                        Text("Vista de Mensajes (Vacía)")
                            .font(.largeTitle)
                            .foregroundColor(Color("VerdeOscuro"))
                    } else if selectedTab == "Ofertas" {
                        Text("Vista de Ofertas (Vacía)")
                            .font(.largeTitle)
                            .foregroundColor(Color("VerdeOscuro"))
                    } else if selectedTab == "Ajustes" {
                        Text("Vista de Ajustes (Vacía)")
                            .font(.largeTitle)
                            .foregroundColor(Color("VerdeOscuro"))
                    }
                }
                .navigationTitle(selectedTab ?? "Dashboard")
            } detail: {
                Text("Selecciona una opción de la barra lateral")
                    .font(.title)
                    .foregroundColor(Color("VerdeOscuro"))
            }
        }
    }
}

#Preview {
    ContentView()
}
