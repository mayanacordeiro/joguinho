//
//  Level5.swift
//  FulaninhoGame
//
//  Created by mcor on 25/10/22.
//

import SwiftUI
import AVFoundation
import MediaPlayer

struct Level5: View {
    @State var audioPlayer: AVAudioPlayer!
    @State var volume: Float = 0.5
    
//    @State var volume: Float = AVAudioSession.sharedInstance().outputVolume
    @ObservedObject private var volObserver = VolumeObserver()
//    @State var minVol: Float = 0.0
//    @State var midVol: Float = 0.5
//    @State var maxVol: Float = 1.0
    
    
    init() {
//        volObserver.volume = volume
        print(volObserver.volume)
    }
    
    var body: some View {
        ZStack {
            
            Text("current volume is \(volObserver.volume)")
          
        }
        .onAppear(perform: {
            playSounds("ForestAudio.m4a")
            if audioPlayer.volume == 0.0 {
                print("ta baixo porra")
            } else if audioPlayer.volume == 1.0 {
                print("ta alto porra")
            }
          
        })
//        if volume == 1.0 {
//                                      print("volume máximo")
//                                  }else if volume == 0 {
//                                      print("volume mínimo")
//                                  } else {
//                                      print("faz alguma coisa")
//                                  }
        }
        
        
    }
        //        .onReceive(AVAudioSession.sharedInstance().publisher(for: \.outputVolume), perform: { value in
        //            self.volume = value
        //                                GetVolumeViewController()
        //                        if volume == 1.0 {
        //                            print("volume máximo")
        //                        }else if volume == 0 {
        //                            print("volume mínimo")
        //                        } else {
        //                            print("faz alguma coisa")
        //                        }
        
        
    
    
    
    struct Level5_Previews: PreviewProvider {
        static var previews: some View {
            Level5()
        }
    }
    

