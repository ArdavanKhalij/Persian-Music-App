//
//  shur.swift
//  musicapp
//
//  Created by Ardavan.A Khalij on 5/7/20.
//  Copyright © 2020 Ardavan.A Khalij. All rights reserved.
//

import UIKit

class shur: UIViewController {

    @IBOutlet weak var shur: UIButton!
    @IBOutlet weak var dashty: UIButton!
    @IBOutlet weak var abuata: UIButton!
    @IBOutlet weak var baiatetork: UIButton!
    @IBOutlet weak var afshari: UIButton!
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonsCornerRadius()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }

    func buttonsCornerRadius (){
        shur.layer.cornerRadius = 7
        shur.clipsToBounds = true
        dashty.layer.cornerRadius = 7
        dashty.clipsToBounds = true
        abuata.layer.cornerRadius = 7
        abuata.clipsToBounds = true
        baiatetork.layer.cornerRadius = 7
        baiatetork.clipsToBounds = true
        afshari.layer.cornerRadius = 7
        afshari.clipsToBounds = true
    }
    
}
