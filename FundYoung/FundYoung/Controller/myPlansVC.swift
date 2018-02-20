//
//  myPlansVC.swift
//  FundYoung
//
//  Created by Janjao on 17/2/2561 BE.
//  Copyright © 2561 Janjao. All rights reserved.
//

import UIKit

class myPlansVC: UIViewController {
    
    let user = UserDataService.instance.getUser()

    @IBOutlet weak var firstNameLbl: UILabel!
    @IBOutlet weak var lastNameLbl: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        firstNameLbl.text = user.FirstName
        lastNameLbl.text = user.LastName
    }
    @IBAction func unwindFromIdetifyingVC(unwindSegue : UIStoryboardSegue){
        
    }
    

}
