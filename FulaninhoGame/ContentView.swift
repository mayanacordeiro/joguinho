//
//  ContentView.swift
//  FulaninhoGame
//
//  Created by mcor on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var scale: CGFloat = 1
    
    var intrucoes = PopUp()
    
    private func showTip() {
        print("mostra a tip")
        
    }
    
    var body: some View {
        ZStack {
            Image("FGScene 1")
                .scaledToFill()
//                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .ignoresSafeArea()
            Image("FGFulaninho 2")
//                .resizable()
//                .frame(width: 200, height: 200)
//                .offset(x: -20, y: -40)
                .background(Color.orange)
            //pinch effect
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
//            Image("FGAlerta dentes")
//            .offset(x: 70, y: -160)
          
//            Button(action: showTip) {
//                Image("FGAlerta dentes")
//                    .background(Color.pink)
//
//            } .offset(x: 100, y: -160)
            
        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
