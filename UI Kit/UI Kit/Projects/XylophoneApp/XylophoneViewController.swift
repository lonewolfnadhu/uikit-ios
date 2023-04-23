//
//  XylophoneViewController.swift
//  UI Kit
//
//  Created by Nadir Shah on 23/04/2023.
//

import UIKit
import AVFoundation

class XylophoneViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let value: String = sender.titleLabel?.text ?? "0"
        print("Value: \(value)")
        
        playSound(soundName: value)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
