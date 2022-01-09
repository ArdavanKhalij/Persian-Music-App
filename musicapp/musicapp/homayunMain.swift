//
//  homayunMain.swift
//  musicapp
//
//  Created by Ardavan.A Khalij on 5/14/20.
//  Copyright © 2020 Ardavan.A Khalij. All rights reserved.
//

import UIKit

class homayunMain: UIViewController {

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
}
