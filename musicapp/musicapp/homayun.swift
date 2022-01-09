//
//  homayun.swift
//  musicapp
//
//  Created by Ardavan.A Khalij on 5/7/20.
//  Copyright © 2020 Ardavan.A Khalij. All rights reserved.
//

import UIKit

class homayun: UIViewController {

    @IBOutlet weak var homayun: UIButton!
    @IBOutlet weak var esfahan: UIButton!
    
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
        homayun.layer.cornerRadius = 7
        homayun.clipsToBounds = true
        esfahan.layer.cornerRadius = 7
        esfahan.clipsToBounds = true
    }
    
}
