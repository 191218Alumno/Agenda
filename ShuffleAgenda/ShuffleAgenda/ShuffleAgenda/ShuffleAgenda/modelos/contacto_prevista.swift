//
//  contacto_prevista.swift
//  ShuffleAgenda
//
//  Created by alumno on 2/28/25.
//

import SwiftUI

struct contacto_prevista: View {
    var contacto_a_mostrar: ContactoAgenda
    var al_pulsar: () -> Void = {print("No se ha implementado")}
    var esquinas_redondeadas = {}
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center){
            Spacer()
            HStack {
                Image(uiImage: #imageLiteral(resourceName: "ditto.png"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                    .clipShape(Circle())
                
                Spacer()
                
                VStack(alignment: HorizontalAlignment.leading) {
                    Text(contacto_a_mostrar.nombre)
                    Text(contacto_a_mostrar.telefono)
                }
                
                .background(Color.clear)
                .frame(width: 150)
                
                Spacer()
            }
        }
    }
}

#Preview {
    contacto_prevista(contacto_a_mostrar: ContactoAgenda(nombre: "Juna", telefono: "1234"))
}
