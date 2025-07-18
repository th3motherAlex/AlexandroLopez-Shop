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
                
        
                HStack {
                    Image(systemName: "leaf.fill")
                        .foregroundColor(.verdePrincipal)
                        .font(.largeTitle)
                    Text("Hola, Alex")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .padding(.bottom, 10)

    
                VStack(alignment: .leading) {
                    Text("Categorías")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(["Frutas", "Verduras", "Cítricos", "Tropicales"], id: \.self) { categoria in
                                VStack {
                                    Image(systemName: iconoParaCategoria(categoria))
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(.verdePrincipal)
                                    Text(categoria)
                                        .font(.caption)
                                }
                                .padding()
                                .background(Color.verdePrincipal.opacity(0.1))
                                .cornerRadius(10)
                            }
                        }
                        .padding(.top, 5)
                    }
                }

             
                VStack(alignment: .leading) {
                    Text("Productos Populares")
                        .font(.title2)
                        .fontWeight(.semibold)

                    LazyVGrid(columns: [GridItem(), GridItem()], spacing: 16) {
                        ForEach(["Manzana", "Papa", "Zanahoria", "Brocoli"], id: \.self) { producto in
                            VStack {
                                Image(systemName: iconoParaProducto(producto))
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.verdeOscuro)
                                Text(producto)
                                    .font(.caption)
                            }
                            .padding()
                            .background(Color.verdeOscuro.opacity(0.1))
                            .cornerRadius(12)
                        }
                    }
                }

             
                VStack(alignment: .leading) {
                    Text("Descuentos")
                        .font(.title2)
                        .fontWeight(.semibold)

                    HStack {
                        Image(systemName: "percent")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.orange)
                        VStack(alignment: .leading) {
                            Text("¡20% en Sandías!")
                                .font(.headline)
                            Text("Solo por hoy")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding()
                    .background(Color.orange.opacity(0.2))
                    .cornerRadius(12)
                }
                HStack {
                    Image(systemName: "applelogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.red)
                    VStack(alignment: .leading) {
                        Text("¡15% en Manzanas!")
                            .font(.headline)
                        Text("Oferta válida hasta el domingo")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .padding()
                .background(Color.red.opacity(0.2))
                .cornerRadius(12)


            
                VStack(alignment: .leading) {
                    Text("Últimos Pedidos")
                        .font(.title2)
                        .fontWeight(.semibold)

                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(["Pedido #1023 - 3kg Manzana", "Pedido #1024 - 2kg Pepino", "Pedido #1025 - 1kg Sandía", "Pedido #1026 - 1kg Naranja"], id: \.self) { pedido in
                            HStack {
                                Image(systemName: "cart.fill")
                                    .foregroundColor(.purple)
                                Text(pedido)
                                    .font(.subheadline)
                            }
                            .padding(8)
                            .background(Color.purple.opacity(0.1))
                            .cornerRadius(8)
                        }
                    }
                }

            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .navigationTitle("Dashboard")
    }
    

    // Función para asignar íconos según categoría
    func iconoParaCategoria(_ nombre: String) -> String {
        switch nombre {
        case "Frutas": return "applelogo"
        case "Verduras": return "leaf.fill"
        case "Cítricos": return "sun.max.fill"
        case "Tropicales": return "tropicalstorm"
        default: return "tag"
        }
    }

    // Función para productos populares
    func iconoParaProducto(_ nombre: String) -> String {
        switch nombre {
        case "Manzana": return "applelogo"
        case "Papa": return "capsule.fill"
        case "Zanahoria": return "hare.fill"
        case "Brocoli": return "tree.fill"
        default: return "cart"
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
