//
//  telaReal.swift
//  FulaninhoGame
//
//  Created by mcor on 25/10/22.
//

import SwiftUI

struct telaReal: View {
    var body: some View {
        gestureView()
            .background(Color.black)
    }
}

struct gestureView: View {
    @State private var scale: CGFloat = 1
    
    var body: some View {
        Image("FGFulaninho 2")
//            .resizable()
//            .frame(width: 100, height: 100)
            .scaleEffect(scale)
            .gesture(
                MagnificationGesture()
                    .onChanged {amount in
                        scale = amount
                    }
                    .onEnded { _ in
                        scale = 1
                    }
                )
    }
}

struct telaReal_Previews: PreviewProvider {
    static var previews: some View {
        telaReal()
    }
}
