//
//  ViewController.swift
//  rocket-launcher
//
//  Created by Chinonso Obidike on 1/14/19.
//  Copyright © 2019 Chinonso Obidike. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    
    @IBOutlet weak var pwrButton: UIButton!
    
    @IBOutlet weak var cloudHolder: UIView!
    
    @IBOutlet weak var rocket: UIImageView!
    
    @IBOutlet weak var hustleLbl: UILabel!
    
    @IBOutlet weak var onLbl: UILabel!
    
    
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")
        let url = URL(fileURLWithPath: path!)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            
        }catch let error as NSError {
            print(error.description)
        }
        
    }
    @IBAction func pwrButtonPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        pwrButton.isHidden = true
        
        player.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 80, width: 413, height: 559)
        }) { (finished) in
            self.hustleLbl.isHidden = false
            self.onLbl.isHidden = false
            
        }
    }
    

}

