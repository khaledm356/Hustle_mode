//
//  ViewController.swift
//  hustle_mode
//
//  Created by eSpace on 7/16/18.
//  Copyright © 2018 eSpace. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    @IBOutlet weak var darkBlueBg: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var Rocket: UIImageView!
    @IBOutlet weak var hustlelbl: UILabel!
    @IBOutlet weak var onlbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError{
            print(error.description)
        }
    }

    @IBAction func buttonpressed(_ sender: Any) {
        cloudHolder.isHidden = false
        powerBtn.isHidden = true
        darkBlueBg.isHidden = true
        player.play()
     UIView.animate(withDuration: 2.3, animations: {
        self.Rocket.frame = CGRect(x:0, y: 100, width: 375, height: 420)
     }) { (finished) in
        self.hustlelbl.isHidden = false
        self.onlbl.isHidden = false
    }
    
}

}
