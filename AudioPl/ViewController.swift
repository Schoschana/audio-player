//
//  ViewController.swift
//  AudioPl
//
//  Created by LILI on 02.05.2018.
//  Copyright © 2018 LILI. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       do {
        audioPlayer = try AVAudioPlayer(contentsOf:URL.init(fileURLWithPath:Bundle.main.path(forResource: "sample",
                    ofType: "mp3")!))
        } catch {
        
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func start(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func stop(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.stop()
        }
    }
    
    @IBAction func restart(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.currentTime = 0
            audioPlayer.play()
        } else {
            audioPlayer.play()
    }
}

}
