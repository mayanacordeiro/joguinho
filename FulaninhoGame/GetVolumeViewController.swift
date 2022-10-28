//
//  GetVolumeViewController.swift
//  FulaninhoGame
//
//  Created by mcor on 27/10/22.
//

import UIKit
import MediaPlayer

class GetVolumeViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let volumeView = MPVolumeView(frame: CGRect.zero)
        self.view.addSubview(volumeView)
        NotificationCenter.default.addObserver(self, selector: #selector(volumeChanged(_:)), name: NSNotification.Name(rawValue: "AVSystemController_SystemVolumeDidChangeNotification"), object: nil)
        // Do any additional setup after loading the view.
    }
    
   @objc func volumeChanged(_ notification: NSNotification) {
        if let volume = notification.userInfo!["AVSystemController_AudioVolumeNotificationParameter"] as? Float {
            print("volume: \(volume)")
            
        }
       
        
    }
}







