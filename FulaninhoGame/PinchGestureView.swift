//
//  PinchGestureView.swift
//  FulaninhoGame
//
//  Created by mcor on 25/10/22.
//

import SwiftUI

struct PinchGestureView: View {
    var body: some View {
        GestureView()
    }
}

struct GestureView: View {
    
    private let minZoom: CGFloat = 1.00
    private let maxZoom: CGFloat = 2.00
    
    @State var image: String = "FGFulaninho 2"
    
    @GestureState private var magnificationLevel: CGFloat = 1
    @State private var zoomLevel: CGFloat = 1
    
    var body: some View {
        Image(image)
            .scaleEffect(setZoom(magnification: magnificationLevel))
            .gesture(MagnificationGesture().updating($magnificationLevel, body: { value, state, _ in
                state = value
            }) .onEnded({ value in
                withAnimation {self.zoomLevel = minZoom
                    image = "FGAlerta dentes"
                }
                
                //self.setZoom(magnification: value)
                
            }))
    }
    
    func setZoom(magnification: CGFloat) -> CGFloat {
        return max(min(self.zoomLevel * magnification, self.maxZoom), self.minZoom)
    }
}

struct PinchGestureView_Previews: PreviewProvider {
    static var previews: some View {
        PinchGestureView()
    }
}
