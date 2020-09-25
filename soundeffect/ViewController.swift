//
//  ViewController.swift
//  soundeffect
//
//  Created by JotaroSugiyama on 2020/09/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    let soundName = ["","nyu1","nyu2","nyu3","puyon1","eye-shine1","shakin1","shine1","sceneswitch1","tirin1","shock1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton){
        let soundURL = Bundle.main.url(forResource: soundName[sender.tag], withExtension: "mp3")
        do {
            // 効果音を鳴らす
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
        } catch {
            print("error...")
        }
    }
    
}

