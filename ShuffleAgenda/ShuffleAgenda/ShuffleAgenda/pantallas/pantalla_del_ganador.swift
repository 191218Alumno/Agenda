//
//  pantalla_del_ganador.swift
//  ShuffleAgenda
//
//  Created by alumno on 3/5/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "Telefoncio", telefono: "656 6201232")

struct pantalla_del_ganador: View {
    var contacto_a_molestar: ContactoAgenda
    var body: some View {
        VStack{
            Image(uiImage: #imageLiteral(resourceName: "ditto.png"))
                .resizable()
                .scaledToFit()
                .frame(width: 150)
            Text("El contacto escogido para molestar es: ")
            Text(contacto_a_molestar.nombre)
            Text(contacto_a_molestar.telefono)
        }
        .background(Color.mint)
         .shadow(color: .black, radius: 1, x: 0, y: 1)
    }
}

#Preview {
    pantalla_del_ganador(contacto_a_molestar: contacto_alterno)
}
