//
//  pantalla_agregar_contacto.swift
//  ShuffleAgenda
//
//  Created by alumno on 3/3/25.
//

import SwiftUI


struct pantalla_agregar_contacto: View {
    @State private var nombre: String = ""
    @State private var numero_telefonico: String = ""
    
    var boton_salir: () -> Void = {
        print("PARECE QUE HAS ELEGIDO EL CAMINO DE LA MUERTE")
    }
    var boton_agregar: (_ nombre: String, _ numero: String) -> Void = {nombre, numero in
        print("PARECE QUE HAS ELEGIDO EL CAMINO DE LA MUERTE")
    }
    
    var body: some View {
        Text("Colocar la etiqueta de nombre")
        ZStack{
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 75)
                .foregroundColor(Color.white)
            TextField("Place holder", text: $nombre)
                .padding(10)
        }
        
        
        Text("Colocar el campo del numero telefonico")
        TextField("Place holder numeros", text: $numero_telefonico)
            .frame(maxWidth: .infinity, maxHeight: 75)
            .foregroundColor(Color.teal)
        
        HStack{
            Icono(tamaño: 65, ruta_icono: "person.crop.circle.badge.plus", padding: 10)
                .onTapGesture {
                    boton_agregar(nombre, numero_telefonico)
                }
        }.foregroundColor(Color.teal)
    }
}

#Preview {
    pantalla_agregar_contacto()
}
