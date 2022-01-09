//
//  ViewController.swift
//  musicapp
//
//  Created by Ardavan.A Khalij on 5/6/20.
//  Copyright © 2020 Ardavan.A Khalij. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shur: UIButton!
    @IBOutlet weak var homayun: UIButton!
    @IBOutlet weak var segah: UIButton!
    @IBOutlet weak var chahargah: UIButton!
    @IBOutlet weak var rastpanjgah: UIButton!
    @IBOutlet weak var mahur: UIButton!
    @IBOutlet weak var nava: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonsCornerRadius()
    }

    func buttonsCornerRadius (){
        shur.layer.cornerRadius = 15
        shur.clipsToBounds = true
        homayun.layer.cornerRadius = 15
        homayun.clipsToBounds = true
        segah.layer.cornerRadius = 15
        segah.clipsToBounds = true
        chahargah.layer.cornerRadius = 15
        chahargah.clipsToBounds = true
        rastpanjgah.layer.cornerRadius = 15
        rastpanjgah.clipsToBounds = true
        mahur.layer.cornerRadius = 15
        mahur.clipsToBounds = true
        nava.layer.cornerRadius = 15
        nava.clipsToBounds = true
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
}

