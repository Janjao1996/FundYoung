//
//  RebalanceVC.swift
//  FundYoung
//
//  Created by Janjao on 20/2/2561 BE.
//  Copyright © 2561 Janjao. All rights reserved.
//

import UIKit

class RebalanceVC: UIViewController {

    @IBOutlet weak var DoneBtn: UIButton!
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var RelalanceBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        DoneBtn.isHidden = true
        // Do any additional setup after loading the view.
    }

    
    @IBAction func RebalancePressed(_ sender: Any) {
        if DoneBtn.isHidden{
            DoneBtn.isHidden = false
            BackBtn.isHidden = true
            RelalanceBtn.isHidden = true
        }
        
    }
    
  
}
