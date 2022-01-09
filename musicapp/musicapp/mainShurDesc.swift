//
//  mainShurDesc.swift
//  musicapp
//
//  Created by Ardavan.A Khalij on 5/14/20.
//  Copyright © 2020 Ardavan.A Khalij. All rights reserved.
//

import UIKit

class mainShurDesc: UIViewController {

    @IBOutlet weak var shurTitle: UILabel!
    @IBOutlet weak var mesra1: UILabel!
    @IBOutlet weak var mesra2: UILabel!
    @IBOutlet weak var mesra3: UILabel!
    @IBOutlet weak var mesra4: UILabel!
    @IBOutlet weak var mesra5: UILabel!
    @IBOutlet weak var mesra6: UILabel!
    @IBOutlet weak var mesra7: UILabel!
    @IBOutlet weak var mesra8: UILabel!
    @IBOutlet weak var stop: UIButton!
    @IBOutlet weak var pause: UIButton!
    @IBOutlet weak var play: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shurTitle.text = "❈ " + shurList[shurIndex] + " ❈"
        
        mesra1.text=shurPoems1[shurIndex]
        mesra2.text=shurPoems2[shurIndex]
        mesra3.text=shurPoems3[shurIndex]
        mesra4.text=shurPoems4[shurIndex]
        mesra5.text=shurPoems5[shurIndex]
        mesra6.text=shurPoems6[shurIndex]
        mesra7.text=shurPoems7[shurIndex]
        mesra8.text=shurPoems8[shurIndex]
        
        play.frame.size.height = play.frame.size.width
        pause.frame.size.height = play.frame.size.width
        stop.frame.size.height = play.frame.size.width
        
        play.layer.cornerRadius = ((play.frame.size.width)/2)-7
        play.clipsToBounds = true
        pause.layer.cornerRadius = ((pause.frame.size.width)/2)-7
        pause.clipsToBounds = true
        stop.layer.cornerRadius = ((stop.frame.size.width)/2)-7
        stop.clipsToBounds = true
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
