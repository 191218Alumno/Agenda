//
//  PantallaAgenda.swift
//  ShuffleAgenda
//
//  Created by alumno on 26/02/25.
//

//
//  PantallaAgenda.swift
//  ShuffleAgenda
//
//  Created by alumno on 26/02/25.
//
 
import SwiftUI
 
struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    var esquinas_redondeadas = CGSize(width: 25, height: 25)
    
    @State var pantalla_agregar_contacto: Bool = false
    @State var pantalla_elegir_contacto: Bool = false
    
    @State var contactos_actuales: [ContactoAgenda] = []
    var body: some View {
        List{
            VStack(spacing: 20) {
                ForEach(contactos_actuales) { contacto in
                    contacto_prevista(contacto_a_mostrar: contacto)
                        .background(Color.mint)
                        .frame(alignment: Alignment.center)
                        .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
                }
            }
        }
        .background(Color.indigo)
        .navigationTitle("---")
        .listStyle(.plain)
        
        HStack{
            ZStack{
                Circle()
                    .fill(.indigo)
                    .frame(width: 100)
 
                Image(systemName: "plus")
                    .resizable()
                        .frame(width: 75, height: 75)
                
                    
                    
            }.padding(10)
            .onTapGesture {
                print("Todavia no se implementa")
                pantalla_agregar_contacto.toggle()
            }
            Spacer()
            ZStack{
                Circle()
                    .fill(.indigo)
                    .frame(width: 100)
 
                Image(systemName: "shuffle")
                    .resizable()
                        .frame(width: 75, height: 75)
                
                    
                    
            }.padding(10)
            .onTapGesture {
                print("Todavia no se implementa")
                pantalla_elegir_contacto.toggle()
            }
        }
        .background(Color.mint)
        .sheet(isPresented: $pantalla_agregar_contacto) {
            ShuffleAgenda.pantalla_agregar_contacto(boton_salir:{
                pantalla_agregar_contacto.toggle()
            },
                            boton_agregar: {nombre, numero in
                let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero)
                contactos_actuales.append(contacto_nuevo)
                pantalla_agregar_contacto.toggle()
            }
        )}
        .sheet(isPresented: $pantalla_elegir_contacto) {
            pantalla_del_ganador(contacto_a_molestar: contactos_actuales.randomElement()!)
        }
        
        
    }
}
 
#Preview {
    PantallaAgenda()
}
 
