//
//  PopUp.swift
//  FulaninhoGame
//
//  Created by mcor on 20/10/22.
//

import SwiftUI

func buttonClick() {
    print("clicou no ok")
}

struct PopUp: View {
    var body: some View {
        VStack {
            Text("Hora de escovar os dentes")
                .font(.title)
                .padding()
            Text("O bichinho não quer abrir a boca")
                .font(.body)
            Text("Dê uma forcinha!")
                .font(.body)
            Button(action: buttonClick) {
                Text("Ok")
                    .padding(20)
                    .foregroundColor(.green)
            }
        }
    }
}

struct PopUp_Previews: PreviewProvider {
    static var previews: some View {
        PopUp()
    }
}
